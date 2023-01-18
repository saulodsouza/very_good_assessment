// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coffee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Coffee {
  String get localFilePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoffeeCopyWith<Coffee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeCopyWith<$Res> {
  factory $CoffeeCopyWith(Coffee value, $Res Function(Coffee) then) =
      _$CoffeeCopyWithImpl<$Res, Coffee>;
  @useResult
  $Res call({String localFilePath});
}

/// @nodoc
class _$CoffeeCopyWithImpl<$Res, $Val extends Coffee>
    implements $CoffeeCopyWith<$Res> {
  _$CoffeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localFilePath = null,
  }) {
    return _then(_value.copyWith(
      localFilePath: null == localFilePath
          ? _value.localFilePath
          : localFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoffeeCopyWith<$Res> implements $CoffeeCopyWith<$Res> {
  factory _$$_CoffeeCopyWith(_$_Coffee value, $Res Function(_$_Coffee) then) =
      __$$_CoffeeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String localFilePath});
}

/// @nodoc
class __$$_CoffeeCopyWithImpl<$Res>
    extends _$CoffeeCopyWithImpl<$Res, _$_Coffee>
    implements _$$_CoffeeCopyWith<$Res> {
  __$$_CoffeeCopyWithImpl(_$_Coffee _value, $Res Function(_$_Coffee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localFilePath = null,
  }) {
    return _then(_$_Coffee(
      localFilePath: null == localFilePath
          ? _value.localFilePath
          : localFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Coffee implements _Coffee {
  const _$_Coffee({required this.localFilePath});

  @override
  final String localFilePath;

  @override
  String toString() {
    return 'Coffee(localFilePath: $localFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coffee &&
            (identical(other.localFilePath, localFilePath) ||
                other.localFilePath == localFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localFilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeCopyWith<_$_Coffee> get copyWith =>
      __$$_CoffeeCopyWithImpl<_$_Coffee>(this, _$identity);
}

abstract class _Coffee implements Coffee {
  const factory _Coffee({required final String localFilePath}) = _$_Coffee;

  @override
  String get localFilePath;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeCopyWith<_$_Coffee> get copyWith =>
      throw _privateConstructorUsedError;
}
