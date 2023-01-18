import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:very_good_coffee/core/failure.dart';
import 'package:very_good_coffee/feed/domain/i_coffee_repository.dart';
import 'package:very_good_coffee/feed/feed.dart';

@Injectable(as: ICoffeeRepository)
class CoffeeRepository implements ICoffeeRepository {
  CoffeeRepository(this.remoteDataSource, this.localDataSource);

  final ICoffeeLocalDataSource localDataSource;
  final ICoffeeRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<Coffee>>> getRandomCoffees({
    required int numberOfCoffees,
  }) async {
    try {
      final result = await Future.wait(
        List.generate(
          numberOfCoffees,
          (_) => remoteDataSource.getRandomCoffee(),
        ),
      );
      return right(result.map((coffeeDto) => coffeeDto.toDomain()).toList());
    } on ServerException catch (e) {
      return left(ServerError(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveCoffee(Coffee coffee) async {
    try {
      return right(await localDataSource.saveCoffee(coffee));
    } on ServerException catch (e) {
      return left(ServerError(e.message));
    } on CacheException catch (e) {
      return left(CacheError(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCoffee(Coffee coffee) async {
    try {
      return right(await localDataSource.deleteCoffee(coffee));
    } on CacheException catch (e) {
      return left(CacheError(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Coffee>>> getSavedCoffees() async {
    try {
      final result = await localDataSource.getCoffees();
      return right(result.map((coffeeDto) => coffeeDto.toDomain()).toList());
    } on CacheException catch (e) {
      return left(CacheError(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCachedCoffees() async {
    try {
      return right(await localDataSource.deleteCachedCoffees());
    } on CacheException catch (e) {
      return left(CacheError(e.message));
    }
  }
}
