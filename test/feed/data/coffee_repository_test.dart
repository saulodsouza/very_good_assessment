// ignore_for_file: inference_failure_on_function_invocation

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:very_good_coffee/core/failure.dart';
import 'package:very_good_coffee/feed/feed.dart';

class MockCoffeeRemoteDataSource extends Mock
    implements ICoffeeRemoteDataSource {}

class MockCoffeeLocalDataSource extends Mock implements ICoffeeLocalDataSource {
}

class FakeCoffee extends Fake implements Coffee {}

void main() {
  late MockCoffeeRemoteDataSource remoteDataSource;
  late MockCoffeeLocalDataSource localDataSource;
  late CoffeeRepository repository;

  setUp(() {
    remoteDataSource = MockCoffeeRemoteDataSource();
    localDataSource = MockCoffeeLocalDataSource();
    repository = CoffeeRepository(remoteDataSource, localDataSource);
    registerFallbackValue(FakeCoffee());
  });

  group('getRandomCoffees', () {
    const tCoffeeDto = CoffeeDto(localFilePath: 'localFilePath');
    const tMessage = 'message';
    test(
      '''
should return remote data when the call to remote data source is successfull''',
      () async {
        // arrange
        when(() => remoteDataSource.getRandomCoffee())
            .thenAnswer((_) async => tCoffeeDto);
        // act
        final result = await repository.getRandomCoffees(numberOfCoffees: 3);
        final expected = [tCoffeeDto, tCoffeeDto, tCoffeeDto]
            .map((e) => e.toDomain())
            .toList();
        // assert
        verify(() => remoteDataSource.getRandomCoffee()).called(3);
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), expected);
      },
    );

    test(
      '''
should return Server Failure when the call to remote data source is unsuccessfull''',
      () async {
        // arrange
        when(() => remoteDataSource.getRandomCoffee())
            .thenThrow(const ServerException(tMessage));
        // act
        final result = await repository.getRandomCoffees(numberOfCoffees: 1);
        // assert
        verify(() => remoteDataSource.getRandomCoffee()).called(1);
        expect(result, left(const ServerError(tMessage)));
      },
    );
  });

  group('saveCoffee', () {
    const tMessage = 'message';
    const tCoffee = Coffee(localFilePath: 'localFilePath');
    test(
      '''
should return unit when the call to local data source is successfull''',
      () async {
        // arrange
        when(() => localDataSource.saveCoffee(any()))
            .thenAnswer((_) async => unit);
        // act
        final result = await repository.saveCoffee(tCoffee);
        // assert
        verify(() => localDataSource.saveCoffee(tCoffee));
        expect(result, right(unit));
      },
    );

    test(
      '''
should return Cache Failure when the call to local data source is unsuccessfull''',
      () async {
        // arrange
        when(() => localDataSource.saveCoffee(any()))
            .thenThrow(const CacheException(tMessage));
        // act
        final result = await repository.saveCoffee(tCoffee);
        // assert
        verify(() => localDataSource.saveCoffee(tCoffee));
        expect(result, left(const CacheError(tMessage)));
      },
    );
  });

  group('deleteCoffee', () {
    const tMessage = 'message';
    const tCoffee = Coffee(localFilePath: 'localFilePath');
    test(
      '''
should return unit when the call to local data source is successfull''',
      () async {
        // arrange
        when(() => localDataSource.deleteCoffee(any()))
            .thenAnswer((_) async => unit);
        // act
        final result = await repository.deleteCoffee(tCoffee);
        // assert
        verify(() => localDataSource.deleteCoffee(tCoffee));
        expect(result, right(unit));
      },
    );

    test(
      '''
should return Cache Failure when the call to local data source is unsuccessfull''',
      () async {
        // arrange
        when(() => localDataSource.deleteCoffee(any()))
            .thenThrow(const CacheException(tMessage));
        // act
        final result = await repository.deleteCoffee(tCoffee);
        // assert
        verify(() => localDataSource.deleteCoffee(tCoffee));
        expect(result, left(const CacheError(tMessage)));
      },
    );
  });

  group('getSavedCoffees', () {
    const tCoffeesDto = [CoffeeDto(localFilePath: 'localFilePath')];
    const tMessage = 'message';

    test(
      '''
should return unit when the call to local data source is successfull''',
      () async {
        // arrange
        when(() => localDataSource.getCoffees())
            .thenAnswer((_) async => tCoffeesDto);
        // act
        final result = await repository.getSavedCoffees();
        final expected = tCoffeesDto.map((e) => e.toDomain());
        // assert
        expect(result.isRight(), true);
        expect(result.getOrElse(() => []), expected);
      },
    );

    test(
      '''
should return Cache Failure when the call to local data source is unsuccessfull''',
      () async {
        // arrange
        when(() => localDataSource.getCoffees())
            .thenThrow(const CacheException(tMessage));
        // act
        final result = await repository.getSavedCoffees();
        // assert
        verify(() => localDataSource.getCoffees());
        expect(result, left(const CacheError(tMessage)));
      },
    );
  });

  group('deleteCachedCoffees', () {
    const tMessage = 'message';
    test(
      '''
should return unit when the call to local data source is successfull''',
      () async {
        // arrange
        when(() => localDataSource.deleteCachedCoffees())
            .thenAnswer((_) async => unit);
        // act
        final result = await repository.deleteCachedCoffees();
        // assert
        verify(() => localDataSource.deleteCachedCoffees());
        expect(result, right(unit));
      },
    );

    test(
      '''
should return Cache Failure when the call to local data source is unsuccessfull''',
      () async {
        // arrange
        when(() => localDataSource.deleteCachedCoffees())
            .thenThrow(const CacheException(tMessage));
        // act
        final result = await repository.deleteCachedCoffees();
        // assert
        verify(() => localDataSource.deleteCachedCoffees());
        expect(result, left(const CacheError(tMessage)));
      },
    );
  });
}
