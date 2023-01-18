import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee.freezed.dart';

@freezed
class Coffee with _$Coffee {
  const factory Coffee({
    required String localFilePath,
  }) = _Coffee;
}
