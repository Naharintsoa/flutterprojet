import 'package:flutter/material.dart';

class FlutterenCours extends StatefulWidget {
  FlutterenCours({Key? key}) : super(key: key);

  @override
  State<FlutterenCours> createState() => _FlutterenCoursState();
}

class _FlutterenCoursState extends State<FlutterenCours> {
  bool isSwitch = false;
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
            height: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.lightBlue,
            child: const Center(
              child: Text(
                'ANDRIANARIVONY Naharintsoa Paré',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 238, 203, 47),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('Elevated Button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined Button');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: const Text('Text Button'),
          ),
          GestureDetector(
            onTap: () {
              debugPrint('En attente');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.orange,
                ),
                Text('Visitez mon CV'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                isSwitch = newBool;
              })
        ],
      ),
    );
  }
}
