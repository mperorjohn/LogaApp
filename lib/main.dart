import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/Landing.dart';
import 'package:my_flutter_app/screens/Home.dart';
import 'package:my_flutter_app/screens/ListViewTutorial.dart';
import 'package:my_flutter_app/screens/RowColumn.dart';

import '/screens/Dashboard.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        title: "Testing App",
        home: ListViewtutorial() ,
        theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: 'Poppins',
        )

    );
      ();
  }
}


