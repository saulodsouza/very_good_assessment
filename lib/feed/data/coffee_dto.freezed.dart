// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coffee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoffeeDto {
  String get localFilePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoffeeDtoCopyWith<CoffeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeDtoCopyWith<$Res> {
  factory $CoffeeDtoCopyWith(CoffeeDto value, $Res Function(CoffeeDto) then) =
      _$CoffeeDtoCopyWithImpl<$Res, CoffeeDto>;
  @useResult
  $Res call({String localFilePath});
}

/// @nodoc
class _$CoffeeDtoCopyWithImpl<$Res, $Val extends CoffeeDto>
    implements $CoffeeDtoCopyWith<$Res> {
  _$CoffeeDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_CoffeeDtoCopyWith<$Res> implements $CoffeeDtoCopyWith<$Res> {
  factory _$$_CoffeeDtoCopyWith(
          _$_CoffeeDto value, $Res Function(_$_CoffeeDto) then) =
      __$$_CoffeeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String localFilePath});
}

/// @nodoc
class __$$_CoffeeDtoCopyWithImpl<$Res>
    extends _$CoffeeDtoCopyWithImpl<$Res, _$_CoffeeDto>
    implements _$$_CoffeeDtoCopyWith<$Res> {
  __$$_CoffeeDtoCopyWithImpl(
      _$_CoffeeDto _value, $Res Function(_$_CoffeeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localFilePath = null,
  }) {
    return _then(_$_CoffeeDto(
      localFilePath: null == localFilePath
          ? _value.localFilePath
          : localFilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CoffeeDto implements _CoffeeDto {
  const _$_CoffeeDto({required this.localFilePath});

  @override
  final String localFilePath;

  @override
  String toString() {
    return 'CoffeeDto(localFilePath: $localFilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeDto &&
            (identical(other.localFilePath, localFilePath) ||
                other.localFilePath == localFilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localFilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeDtoCopyWith<_$_CoffeeDto> get copyWith =>
      __$$_CoffeeDtoCopyWithImpl<_$_CoffeeDto>(this, _$identity);
}

abstract class _CoffeeDto implements CoffeeDto {
  const factory _CoffeeDto({required final String localFilePath}) =
      _$_CoffeeDto;

  @override
  String get localFilePath;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeDtoCopyWith<_$_CoffeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
