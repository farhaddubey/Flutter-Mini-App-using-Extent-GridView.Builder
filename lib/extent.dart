import 'package:flutter/material.dart';


class MyExtent extends StatelessWidget {
  const MyExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview Extent'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("1st", style: TextStyle(fontSize: 15),),
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("2nd", style: TextStyle(fontSize: 15),),
              color: Colors.blue,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("3rd", style: TextStyle(fontSize: 15),),
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("4th", style: TextStyle(fontSize: 15),),
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("5th", style: TextStyle(fontSize: 20),),
              color: Colors.purpleAccent,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: const Text("6th", style: TextStyle(fontSize: 20),),
              color: Colors.cyan,
            )
          ],
        ),
      ),
    );
  }
}

