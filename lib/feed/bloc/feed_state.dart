part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    required IList<Coffee> coffees,
    required int currentIndex,
    required String errorMessage,
  }) = _FeedState;

  factory FeedState.initial() =>
      FeedState(coffees: IList.from([]), currentIndex: 0, errorMessage: '');

  factory FeedState.error({
    required IList<Coffee> coffees,
    required int currentIndex,
    required String errorMessage,
  }) =>
      FeedState(
        coffees: coffees,
        currentIndex: currentIndex,
        errorMessage: errorMessage,
      );
}
