import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdavincicode/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home',
            ),
            
            ElevatedButton(onPressed: () {}, child: Text('Logout'))
          ],
        ),
      ),
    );
  }
}