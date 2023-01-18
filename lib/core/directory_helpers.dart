import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

Future<String> createFilePathInFolder({required String folder}) async {
  final directory = await getApplicationSupportDirectory();
  return '${directory.path}/$folder/${createRandomFileName()}';
}

Future<Directory> openFolder({required String folder}) async {
  final directory = await getApplicationSupportDirectory();
  return Directory('${directory.path}/$folder/');
}

String createRandomFileName({String extension = 'jpeg'}) {
  final fileName = const Uuid().v1();
  return '$fileName.$extension';
}
