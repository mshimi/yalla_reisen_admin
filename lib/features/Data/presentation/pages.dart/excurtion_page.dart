import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yalla_reisen_withspringboot/app/api/rest_client.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';

class ExcurtionPage extends StatefulWidget {
  const ExcurtionPage({super.key});

  @override
  State<ExcurtionPage> createState() => _ExcurtionPageState();
}

class _ExcurtionPageState extends State<ExcurtionPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          builder: (context, async) {
            return Placeholder();
          },
          future: _getunit(),
        )
      ],
    );
  }

  Future<String> _getunit() async {
    var filePicker = await FilePicker.platform.pickFiles();

    var file = filePicker!.files.first;

//     print("bytes: ${file.bytes}");
//     print("name: ${file.name}");
//     print("extension: ${file.extension}");
//     print("identifier: ${file.identifier}");
// //
//     print("name: ${file.name}");

    MultipartFile multipartFile =
        MultipartFile.fromBytes(file.bytes!, filename: "test.png");

    var response = await getIt<RestClient>()
        .uploadImage(id: 2, map: {"file": multipartFile});

    print("object response is : $response");

    return response;
    // MultipartFile.fromBytes(
    //   file.bytes!,
    //   filename: file.name,
    // ).contentType;
  }
}
