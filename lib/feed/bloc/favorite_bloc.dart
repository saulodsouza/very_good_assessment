import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:very_good_coffee/feed/domain/i_coffee_repository.dart';
import 'package:very_good_coffee/feed/feed.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

@injectable
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc(this.repository) : super(const FavoriteState.initial()) {
    on<CoffeeDeleted>(_onCoffeeDeleted);
    on<CoffeeLoaded>(_onCoffeeLoaded);
    on<CoffeePhotoSaved>(_onCoffeePhotoSaved);
  }

  final ICoffeeRepository repository;

  FutureOr<void> _onCoffeeDeleted(
    CoffeeDeleted event,
    Emitter<FavoriteState> emit,
  ) async {
    final inputEither = await repository.deleteCoffee(event.coffee);

    inputEither.fold(
      (failure) => emit(FavoriteState.error(failure.message)),
      (_) => add(const CoffeeLoaded()),
    );
  }

  FutureOr<void> _onCoffeeLoaded(
    CoffeeLoaded event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(const FavoriteState.loading());

    final inputEither = await repository.getSavedCoffees();

    inputEither.fold(
      (failure) => emit(FavoriteState.error(failure.message)),
      (coffees) => emit(FavoriteState.loaded(IList.from(coffees))),
    );
  }

  FutureOr<void> _onCoffeePhotoSaved(
    CoffeePhotoSaved event,
    Emitter<FavoriteState> emit,
  ) async {
    final inputEither = await repository.saveCoffee(event.coffee);

    inputEither.fold(
      (failure) => emit(FavoriteState.error(failure.message)),
      (_) => add(const CoffeeLoaded()),
    );
  }
}
