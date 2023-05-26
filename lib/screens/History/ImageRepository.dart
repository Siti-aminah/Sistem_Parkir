// ignore_for_file: import_of_legacy_library_into_null_safe, avoid_print, unused_local_variable, non_constant_identifier_names, file_names, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_uts/screens/History/ImagesModel.dart';

class ImageRepository {
  Future getData() async {
    try {
      final response =
          await http.get(Uri.parse('http://192.168.43.233:5000/image/all'));
      if (response.statusCode == 200) {
        // print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Images> image = it.map((e) => Images.fromJson(e)).toList();
        return image;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
