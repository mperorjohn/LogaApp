import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Dashboard.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: false,
        // foregroundColor: Colors.white,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
            label: Text("Login"),
            icon: Icon(FontAwesomeIcons.arrowUpFromBracket),
            style: ElevatedButton.styleFrom(
              elevation: 15,
              side: BorderSide(color: Colors.yellow, width: 3),
              alignment: Alignment.center,
              shadowColor: Colors.red,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ) ,
              //   shape: StadiumBorder(),
              // padding: EdgeInsets.only(left: 80, right: 80, top: 10, bottom: 10),
              fixedSize: Size(200, 60),
              textStyle: TextStyle(
                fontSize: 25,
                // fontWeight: FontWeight.bold,
              )
            ),
            onPressed:
                () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
          ),
        ),
      ),
    );
  }
}
