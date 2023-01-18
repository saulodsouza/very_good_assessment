import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:very_good_coffee/core/directory_helpers.dart';
import 'package:very_good_coffee/core/failure.dart';
import 'package:very_good_coffee/feed/feed.dart';

abstract class ICoffeeLocalDataSource {
  Future<Unit> deleteCoffee(Coffee coffee);
  Future<List<CoffeeDto>> getCoffees();
  Future<Unit> saveCoffee(Coffee coffee);
  Future<Unit> deleteCachedCoffees();
}

@Injectable(as: ICoffeeLocalDataSource)
class CoffeeLocalDataSource implements ICoffeeLocalDataSource {
  CoffeeLocalDataSource();

  static const String folder = 'favorites';

  @override
  Future<Unit> deleteCoffee(Coffee coffee) async {
    try {
      await File(coffee.localFilePath).delete();
      return unit;
    } on PlatformException {
      throw const CacheException('File does not exist');
    }
  }

  @override
  Future<List<CoffeeDto>> getCoffees() async {
    try {
      final files = (await openFolder(folder: folder)).listSync();
      return files.map((e) => CoffeeDto(localFilePath: e.path)).toList();
    } on PlatformException {
      throw const CacheException('Error getting the local photos');
    }
  }

  @override
  Future<Unit> saveCoffee(Coffee coffee) async {
    try {
      final filePath = await createFilePathInFolder(folder: folder);
      final file = await File(filePath).create(recursive: true);
      file.writeAsBytesSync(File(coffee.localFilePath).readAsBytesSync());

      return unit;
    } on FileSystemException {
      throw const CacheException('Error trying to save your photo');
    }
  }

  @override
  Future<Unit> deleteCachedCoffees() async {
    try {
      final directory = await openFolder(folder: folder);
      directory.deleteSync(recursive: true);
      return unit;
    } on FileSystemException {
      throw const CacheException('Error trying to delete cached photos');
    }
  }
}
