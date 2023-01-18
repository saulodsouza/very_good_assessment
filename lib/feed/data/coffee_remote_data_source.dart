// ignore_for_file: inference_failure_on_function_invocation
// ignore_for_file: one_member_abstracts

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:very_good_coffee/core/directory_helpers.dart';
import 'package:very_good_coffee/core/failure.dart';
import 'package:very_good_coffee/feed/feed.dart';

abstract class ICoffeeRemoteDataSource {
  Future<CoffeeDto> getRandomCoffee();
}

@Injectable(as: ICoffeeRemoteDataSource)
class CoffeeRemoteDataSource implements ICoffeeRemoteDataSource {
  CoffeeRemoteDataSource(this.client);

  final Dio client;
  static const String folder = 'cache';

  @override
  Future<CoffeeDto> getRandomCoffee() async {
    final response =
        await client.get('https://coffee.alexflipnote.dev/random.json');

    if (response.statusCode == 200) {
      final coffeeUrl =
          (response.data as Map<String, dynamic>)['file'] as String;

      return _downloadImage(coffeeUrl);
    } else {
      throw ServerException(
        response.statusMessage ?? "Couldn't fetch any image.",
      );
    }
  }

  Future<CoffeeDto> _downloadImage(String url) async {
    final filePath = await createFilePathInFolder(folder: folder);
    final response = await client.download(url, filePath);

    if (response.statusCode == 200) {
      return CoffeeDto(localFilePath: filePath);
    }

    throw ServerException(
      response.statusMessage ?? "Couldn't download your image",
    );
  }
}
