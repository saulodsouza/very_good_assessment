import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:very_good_coffee/feed/domain/coffee.dart';
import 'package:very_good_coffee/feed/domain/i_coffee_repository.dart';

part 'feed_bloc.freezed.dart';
part 'feed_event.dart';
part 'feed_state.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc(this.repository) : super(FeedState.initial()) {
    on<RandomCoffeePhotoFetched>(_onRandomCoffeePhotoFetched);
  }

  final ICoffeeRepository repository;

  FutureOr<void> _onRandomCoffeePhotoFetched(
    RandomCoffeePhotoFetched event,
    Emitter<FeedState> emit,
  ) async {
    // If state is empty it means it's the first time is called. In this case,
    // It fetches 3 coffees to create a smoother experience by having some
    // photos preloaded.
    if (state.coffees.isEmpty) {
      await _fetchRandomCoffees(event, emit, numberOfCoffees: 3);
    } else if (_isCurrentCoffeeAntepenultimate(event)) {
      await _fetchRandomCoffees(event, emit, numberOfCoffees: 1);
    }

    emit(state.copyWith(currentIndex: event.currentIndex));
  }

  Future<void> _fetchRandomCoffees(
    RandomCoffeePhotoFetched event,
    Emitter<FeedState> emit, {
    required int numberOfCoffees,
  }) async {
    final inputEither = await repository.getRandomCoffees(
      numberOfCoffees: numberOfCoffees,
    );

    inputEither.fold(
      (failure) => emit(
        FeedState.error(
          coffees: state.coffees,
          currentIndex: state.currentIndex,
          errorMessage: failure.message,
        ),
      ),
      (coffees) {
        final newImmutableList = state.coffees.plus(IList.from(coffees));
        emit(state.copyWith(coffees: newImmutableList));
      },
    );
  }

  bool _isCurrentCoffeeAntepenultimate(RandomCoffeePhotoFetched event) =>
      event.currentIndex >= state.coffees.length() - 2;

  @override
  Future<void> close() async {
    await repository.deleteCachedCoffees();
    return super.close();
  }
}
