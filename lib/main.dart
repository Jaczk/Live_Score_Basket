import 'package:flutter/material.dart';
import 'package:live_score_bola/api_manager.dart';
import 'package:live_score_bola/pages/pageBody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketApp(),
    );
  }
}

class BasketApp extends StatefulWidget {
  @override
  _BasketAppState createState() => _BasketAppState();
}

class _BasketAppState extends State<BasketApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Live Score Basket',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder(
        future: BasketAPI().getAllMatches(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print((snapshot.data).length);
            return pageBody(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
