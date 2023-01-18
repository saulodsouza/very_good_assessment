part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.coffeeLoaded() = CoffeeLoaded;
  const factory FavoriteEvent.coffeePhotoSaved(Coffee coffee) =
      CoffeePhotoSaved;
  const factory FavoriteEvent.coffeeDeleted(Coffee coffee) = CoffeeDeleted;
}
