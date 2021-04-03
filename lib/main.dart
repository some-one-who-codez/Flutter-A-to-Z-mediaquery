import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This device is $screenWidth x $screenHeight',
            ),
            SizedBox(
              height: 20,
            ),
            screenWidth >= 1280 && screenHeight >= 720
                ? Container(
                    height: 100,
                    width: 700,
                    color: Colors.red,
                  )
                : Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
            SizedBox(
              height: 20,
            ),
            screenOrientation == Orientation.portrait
                ? Text(
                    'This device is in portrait mode',
                  )
                : Text(
                    'This device is in landscape mode',
                  ),
          ],
        ),
      ),
    );
  }
}
