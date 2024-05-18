import 'package:flutter/material.dart';
import 'package:flutter_gridview/extent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> images = [
    "https://img.freepik.com/premium-photo/young-beautiful-woman-posing-advertising-purposes-lingerie_93995-25329.jpg?w=740",
    "https://img.freepik.com/premium-photo/young-beautiful-woman-posing-advertising-purposes-lingerie_93995-25329.jpg?w=740",
    "https://img.freepik.com/premium-photo/young-beautiful-woman-posing-advertising-purposes-lingerie_93995-25329.jpg?w=740",
    "https://img.freepik.com/premium-photo/young-beautiful-woman-posing-advertising-purposes-lingerie_93995-25329.jpg?w=740",
    "https://img.freepik.com/premium-photo/young-beautiful-woman-posing-advertising-purposes-lingerie_93995-25329.jpg?w=740",
    "https://img.freepik.com/premium-photo/young-beautiful-woman-posing-advertising-purposes-lingerie_93995-25329.jpg?w=740",
    "https://img.freepik.com/premium-photo/young-beautiful-woman-posing-advertising-purposes-lingerie_93995-25329.jpg?w=740",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Container(
            //   padding: EdgeInsets.all(5),
            //   child: GridView.builder(itemCount: images.length,
            //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         crossAxisSpacing: 4,
            //         mainAxisSpacing: 4
            //       ),
            //       itemBuilder: (BuildContext context, int index){
            //       return Image.network(images[index]);
            //       }),
            // ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyExtent()));
            }, child: Text("GridView.extent()"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
