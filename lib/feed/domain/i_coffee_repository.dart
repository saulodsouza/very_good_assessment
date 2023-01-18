import 'package:dartz/dartz.dart';
import 'package:very_good_coffee/core/failure.dart';
import 'package:very_good_coffee/feed/feed.dart';

abstract class ICoffeeRepository {
  Future<Either<Failure, List<Coffee>>> getRandomCoffees({
    required int numberOfCoffees,
  });
  Future<Either<Failure, List<Coffee>>> getSavedCoffees();
  Future<Either<Failure, Unit>> saveCoffee(Coffee coffee);
  Future<Either<Failure, Unit>> deleteCoffee(Coffee coffee);
  Future<Either<Failure, Unit>> deleteCachedCoffees();
}
