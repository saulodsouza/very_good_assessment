part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = Initial;
  const factory FavoriteState.loaded(IList<Coffee> coffees) = Loaded;
  const factory FavoriteState.loading() = Loading;
  const factory FavoriteState.error(String errorMessage) = Error;
}
