part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.randomCoffeePhotoFetched({
    @Default(0) int currentIndex,
  }) = RandomCoffeePhotoFetched;
}
