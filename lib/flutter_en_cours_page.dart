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
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          Container(
            color: Colors.lightBlue,
            child: const Text(
              'ANDRIANARIVONY Naharintsoa Paré',
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 238, 203, 47),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
