import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider/path_provider.dart';
import 'package:very_good_coffee/core/directory_helpers.dart';

void main() {
  group('createFilePathInFolder', () {
    const tFolder = 'folder';
    final tFileName = createRandomFileName();
    test(
      'should return file path in correct folder',
      () async {
        // act
        final result = await createFilePathInFolder(folder: tFolder);
        final tDirectory = await getApplicationSupportDirectory();
        final tExpected = '${tDirectory.path}/$tFolder/$tFileName';
        // assert
        expect(
          result.substring(0, tExpected.length - 41),
          tExpected.substring(0, tExpected.length - 41),
        );
      },
    );
  });

  group('openFolder', () {
    const tFolder = 'folder';
    test(
      'should return Directory in correct folder',
      () async {
        // act
        final result = await openFolder(folder: tFolder);
        final tDirectory = await getApplicationSupportDirectory();
        // assert
        expect(result.path, Directory('${tDirectory.path}/$tFolder/').path);
      },
    );
  });

  group('createRandomFileName', () {
    test(
      'should return random name with correct extension',
      () async {
        // act
        final result = createRandomFileName();
        // assert
        expect(result.endsWith('.jpeg'), true);
      },
    );

    test(
      'should return random name with correct extension',
      () async {
        // act
        final result = createRandomFileName(extension: 'mp3');
        // assert
        expect(result.endsWith('.mp3'), true);
      },
    );
  });
}
