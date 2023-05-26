// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:flutter_uts/screens/History/ImagesModel.dart';
import 'package:flutter_uts/screens/History/ImageRepository.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<Images> listImage = [];
  ImageRepository repository = ImageRepository();

  getData() async {
    listImage = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.white,
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama : "),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    listImage[index].plat,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Waktu : "),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    listImage[index].created_at,
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: ((context, index) {
            return Divider();
          }),
          itemCount: listImage.length),
    );
  }
}
