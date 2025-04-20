import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Location"), centerTitle: true),
      body: Center(child: Icon(
        Icons.location_on,
        size: 150,
      )),
    );
  }
}
