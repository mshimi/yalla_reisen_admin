import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

class CustomFilePicker {
  Future<Either<Unit, MultipartFile>> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      Uint8List? unitListForFile = result.files.first.bytes;
      MultipartFile file =
          MultipartFile.fromBytes(unitListForFile!, filename: "test.png");

      return Right(file);
    } else {
      return left(unit);
    }
  }
}
