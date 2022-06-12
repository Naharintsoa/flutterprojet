import 'package:flutter/material.dart';

class FlutterenCours extends StatefulWidget {
  FlutterenCours({Key? key}) : super(key: key);

  @override
  State<FlutterenCours> createState() => _FlutterenCoursState();
}

class _FlutterenCoursState extends State<FlutterenCours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/Nahary.jpg',
            height: 300,
            width: 500,
            colorBlendMode: BlendMode.darken,
          )
        ],
      ),
    );
  }
}
