import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Before After Image'),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BeforeAfter(
            beforeImage: Image.asset('images/gs_ilklogo.jpg'),
            afterImage: Image.asset('images/gs_sonlogo.jpg'),
          ),
    );
  }
}
/*
for null safety error uses this:

Open Edit Configurations in Run.
Select on Add Additional Run args.
Just add –no-sound-null-safety there.
Apply setting. Press Ok

Terminal:
flutter run --no-sound-null-safety


 */
