// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() coffeeLoaded,
    required TResult Function(Coffee coffee) coffeePhotoSaved,
    required TResult Function(Coffee coffee) coffeeDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? coffeeLoaded,
    TResult? Function(Coffee coffee)? coffeePhotoSaved,
    TResult? Function(Coffee coffee)? coffeeDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? coffeeLoaded,
    TResult Function(Coffee coffee)? coffeePhotoSaved,
    TResult Function(Coffee coffee)? coffeeDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoffeeLoaded value) coffeeLoaded,
    required TResult Function(CoffeePhotoSaved value) coffeePhotoSaved,
    required TResult Function(CoffeeDeleted value) coffeeDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoffeeLoaded value)? coffeeLoaded,
    TResult? Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult? Function(CoffeeDeleted value)? coffeeDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoffeeLoaded value)? coffeeLoaded,
    TResult Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult Function(CoffeeDeleted value)? coffeeDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CoffeeLoadedCopyWith<$Res> {
  factory _$$CoffeeLoadedCopyWith(
          _$CoffeeLoaded value, $Res Function(_$CoffeeLoaded) then) =
      __$$CoffeeLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoffeeLoadedCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$CoffeeLoaded>
    implements _$$CoffeeLoadedCopyWith<$Res> {
  __$$CoffeeLoadedCopyWithImpl(
      _$CoffeeLoaded _value, $Res Function(_$CoffeeLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoffeeLoaded implements CoffeeLoaded {
  const _$CoffeeLoaded();

  @override
  String toString() {
    return 'FavoriteEvent.coffeeLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoffeeLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() coffeeLoaded,
    required TResult Function(Coffee coffee) coffeePhotoSaved,
    required TResult Function(Coffee coffee) coffeeDeleted,
  }) {
    return coffeeLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? coffeeLoaded,
    TResult? Function(Coffee coffee)? coffeePhotoSaved,
    TResult? Function(Coffee coffee)? coffeeDeleted,
  }) {
    return coffeeLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? coffeeLoaded,
    TResult Function(Coffee coffee)? coffeePhotoSaved,
    TResult Function(Coffee coffee)? coffeeDeleted,
    required TResult orElse(),
  }) {
    if (coffeeLoaded != null) {
      return coffeeLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoffeeLoaded value) coffeeLoaded,
    required TResult Function(CoffeePhotoSaved value) coffeePhotoSaved,
    required TResult Function(CoffeeDeleted value) coffeeDeleted,
  }) {
    return coffeeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoffeeLoaded value)? coffeeLoaded,
    TResult? Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult? Function(CoffeeDeleted value)? coffeeDeleted,
  }) {
    return coffeeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoffeeLoaded value)? coffeeLoaded,
    TResult Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult Function(CoffeeDeleted value)? coffeeDeleted,
    required TResult orElse(),
  }) {
    if (coffeeLoaded != null) {
      return coffeeLoaded(this);
    }
    return orElse();
  }
}

abstract class CoffeeLoaded implements FavoriteEvent {
  const factory CoffeeLoaded() = _$CoffeeLoaded;
}

/// @nodoc
abstract class _$$CoffeePhotoSavedCopyWith<$Res> {
  factory _$$CoffeePhotoSavedCopyWith(
          _$CoffeePhotoSaved value, $Res Function(_$CoffeePhotoSaved) then) =
      __$$CoffeePhotoSavedCopyWithImpl<$Res>;
  @useResult
  $Res call({Coffee coffee});

  $CoffeeCopyWith<$Res> get coffee;
}

/// @nodoc
class __$$CoffeePhotoSavedCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$CoffeePhotoSaved>
    implements _$$CoffeePhotoSavedCopyWith<$Res> {
  __$$CoffeePhotoSavedCopyWithImpl(
      _$CoffeePhotoSaved _value, $Res Function(_$CoffeePhotoSaved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
  }) {
    return _then(_$CoffeePhotoSaved(
      null == coffee
          ? _value.coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as Coffee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoffeeCopyWith<$Res> get coffee {
    return $CoffeeCopyWith<$Res>(_value.coffee, (value) {
      return _then(_value.copyWith(coffee: value));
    });
  }
}

/// @nodoc

class _$CoffeePhotoSaved implements CoffeePhotoSaved {
  const _$CoffeePhotoSaved(this.coffee);

  @override
  final Coffee coffee;

  @override
  String toString() {
    return 'FavoriteEvent.coffeePhotoSaved(coffee: $coffee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeePhotoSaved &&
            (identical(other.coffee, coffee) || other.coffee == coffee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeePhotoSavedCopyWith<_$CoffeePhotoSaved> get copyWith =>
      __$$CoffeePhotoSavedCopyWithImpl<_$CoffeePhotoSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() coffeeLoaded,
    required TResult Function(Coffee coffee) coffeePhotoSaved,
    required TResult Function(Coffee coffee) coffeeDeleted,
  }) {
    return coffeePhotoSaved(coffee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? coffeeLoaded,
    TResult? Function(Coffee coffee)? coffeePhotoSaved,
    TResult? Function(Coffee coffee)? coffeeDeleted,
  }) {
    return coffeePhotoSaved?.call(coffee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? coffeeLoaded,
    TResult Function(Coffee coffee)? coffeePhotoSaved,
    TResult Function(Coffee coffee)? coffeeDeleted,
    required TResult orElse(),
  }) {
    if (coffeePhotoSaved != null) {
      return coffeePhotoSaved(coffee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoffeeLoaded value) coffeeLoaded,
    required TResult Function(CoffeePhotoSaved value) coffeePhotoSaved,
    required TResult Function(CoffeeDeleted value) coffeeDeleted,
  }) {
    return coffeePhotoSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoffeeLoaded value)? coffeeLoaded,
    TResult? Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult? Function(CoffeeDeleted value)? coffeeDeleted,
  }) {
    return coffeePhotoSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoffeeLoaded value)? coffeeLoaded,
    TResult Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult Function(CoffeeDeleted value)? coffeeDeleted,
    required TResult orElse(),
  }) {
    if (coffeePhotoSaved != null) {
      return coffeePhotoSaved(this);
    }
    return orElse();
  }
}

abstract class CoffeePhotoSaved implements FavoriteEvent {
  const factory CoffeePhotoSaved(final Coffee coffee) = _$CoffeePhotoSaved;

  Coffee get coffee;
  @JsonKey(ignore: true)
  _$$CoffeePhotoSavedCopyWith<_$CoffeePhotoSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoffeeDeletedCopyWith<$Res> {
  factory _$$CoffeeDeletedCopyWith(
          _$CoffeeDeleted value, $Res Function(_$CoffeeDeleted) then) =
      __$$CoffeeDeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Coffee coffee});

  $CoffeeCopyWith<$Res> get coffee;
}

/// @nodoc
class __$$CoffeeDeletedCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$CoffeeDeleted>
    implements _$$CoffeeDeletedCopyWith<$Res> {
  __$$CoffeeDeletedCopyWithImpl(
      _$CoffeeDeleted _value, $Res Function(_$CoffeeDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffee = null,
  }) {
    return _then(_$CoffeeDeleted(
      null == coffee
          ? _value.coffee
          : coffee // ignore: cast_nullable_to_non_nullable
              as Coffee,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CoffeeCopyWith<$Res> get coffee {
    return $CoffeeCopyWith<$Res>(_value.coffee, (value) {
      return _then(_value.copyWith(coffee: value));
    });
  }
}

/// @nodoc

class _$CoffeeDeleted implements CoffeeDeleted {
  const _$CoffeeDeleted(this.coffee);

  @override
  final Coffee coffee;

  @override
  String toString() {
    return 'FavoriteEvent.coffeeDeleted(coffee: $coffee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeDeleted &&
            (identical(other.coffee, coffee) || other.coffee == coffee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeDeletedCopyWith<_$CoffeeDeleted> get copyWith =>
      __$$CoffeeDeletedCopyWithImpl<_$CoffeeDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() coffeeLoaded,
    required TResult Function(Coffee coffee) coffeePhotoSaved,
    required TResult Function(Coffee coffee) coffeeDeleted,
  }) {
    return coffeeDeleted(coffee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? coffeeLoaded,
    TResult? Function(Coffee coffee)? coffeePhotoSaved,
    TResult? Function(Coffee coffee)? coffeeDeleted,
  }) {
    return coffeeDeleted?.call(coffee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? coffeeLoaded,
    TResult Function(Coffee coffee)? coffeePhotoSaved,
    TResult Function(Coffee coffee)? coffeeDeleted,
    required TResult orElse(),
  }) {
    if (coffeeDeleted != null) {
      return coffeeDeleted(coffee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoffeeLoaded value) coffeeLoaded,
    required TResult Function(CoffeePhotoSaved value) coffeePhotoSaved,
    required TResult Function(CoffeeDeleted value) coffeeDeleted,
  }) {
    return coffeeDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoffeeLoaded value)? coffeeLoaded,
    TResult? Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult? Function(CoffeeDeleted value)? coffeeDeleted,
  }) {
    return coffeeDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoffeeLoaded value)? coffeeLoaded,
    TResult Function(CoffeePhotoSaved value)? coffeePhotoSaved,
    TResult Function(CoffeeDeleted value)? coffeeDeleted,
    required TResult orElse(),
  }) {
    if (coffeeDeleted != null) {
      return coffeeDeleted(this);
    }
    return orElse();
  }
}

abstract class CoffeeDeleted implements FavoriteEvent {
  const factory CoffeeDeleted(final Coffee coffee) = _$CoffeeDeleted;

  Coffee get coffee;
  @JsonKey(ignore: true)
  _$$CoffeeDeletedCopyWith<_$CoffeeDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IList<Coffee> coffees) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IList<Coffee> coffees)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IList<Coffee> coffees)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IList<Coffee> coffees) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IList<Coffee> coffees)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IList<Coffee> coffees)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Deleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Deleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FavoriteState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<Coffee> coffees});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffees = null,
  }) {
    return _then(_$Loaded(
      null == coffees
          ? _value.coffees
          : coffees // ignore: cast_nullable_to_non_nullable
              as IList<Coffee>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.coffees);

  @override
  final IList<Coffee> coffees;

  @override
  String toString() {
    return 'FavoriteState.loaded(coffees: $coffees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            (identical(other.coffees, coffees) || other.coffees == coffees));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coffees);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IList<Coffee> coffees) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() deleted,
  }) {
    return loaded(coffees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IList<Coffee> coffees)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? deleted,
  }) {
    return loaded?.call(coffees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IList<Coffee> coffees)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(coffees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Deleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Deleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements FavoriteState {
  const factory Loaded(final IList<Coffee> coffees) = _$Loaded;

  IList<Coffee> get coffees;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IList<Coffee> coffees) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IList<Coffee> coffees)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IList<Coffee> coffees)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Deleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Deleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FavoriteState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$Error(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FavoriteState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IList<Coffee> coffees) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() deleted,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IList<Coffee> coffees)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? deleted,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IList<Coffee> coffees)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Deleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Deleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements FavoriteState {
  const factory Error(final String errorMessage) = _$Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedCopyWith<$Res> {
  factory _$$DeletedCopyWith(_$Deleted value, $Res Function(_$Deleted) then) =
      __$$DeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$Deleted>
    implements _$$DeletedCopyWith<$Res> {
  __$$DeletedCopyWithImpl(_$Deleted _value, $Res Function(_$Deleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Deleted implements Deleted {
  const _$Deleted();

  @override
  String toString() {
    return 'FavoriteState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(IList<Coffee> coffees) loaded,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(IList<Coffee> coffees)? loaded,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(IList<Coffee> coffees)? loaded,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted implements FavoriteState {
  const factory Deleted() = _$Deleted;
}
