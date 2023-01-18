import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:very_good_coffee/feed/feed.dart';

part 'coffee_dto.freezed.dart';

@freezed
class CoffeeDto with _$CoffeeDto {
  const factory CoffeeDto({
    required String localFilePath,
  }) = _CoffeeDto;

  factory CoffeeDto.fromDomain(Coffee coffee) {
    return CoffeeDto(
      localFilePath: coffee.localFilePath,
    );
  }
}

extension XCoffeeDto on CoffeeDto {
  Coffee toDomain() {
    return Coffee(
      localFilePath: localFilePath,
    );
  }
}
