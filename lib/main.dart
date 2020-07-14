import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
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
  String title = 'Flexible';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        // elevation: 0.0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              // height: 150.0,
              color: Color(0xFF1B1F32),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              // height: 150.0,
              color: Colors.orange,
            ),
          ),
          Flexible(
            flex: 3, // flex without aquire automatically remaining space
            fit: FlexFit.tight, // change depend your requirement
            child: Container(
              height: 150.0,
              color: Color(0xFFC41A3B),
            ),
          ),
        ],
      ),
    );
  }
}
