import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_flutter_app/screens/Settings.dart';
import 'package:my_flutter_app/screens/Notify.dart';

import 'Home.dart';
import 'Landing.dart';
import 'Location.dart';
import 'Profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,

                // image:Ima('assets/images/background.jpg'),
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.red),
              title: const Text('Home', style: TextStyle(color: Colors.red)),
              onTap:null,
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.user, color: Colors.red),
              title: const Text('Profile', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.bell, color: Colors.red),
              title: Text('Notification', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notify()),
                );
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.locationDot, color: Colors.red),
              title: Text('Location', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Location()),
                );
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.gear, color: Colors.red),
              title: Text('Settings', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.signOutAlt, color: Colors.red),
              title: Text('Logout', style: TextStyle(color: Colors.red)),
              onTap:null,
            ),
          ],
        ),
      ),
      // The drawer section
      appBar: AppBar(
        title: Text(
          "My Dashboard".toUpperCase(),
          style: const TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: 350.0,
        height: 250.0,
        padding: EdgeInsets.all(30.0),
        margin: EdgeInsets.all(30.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10.0),
          color: Colors.red,
          // border: Border(
          //   top: BorderSide(color: Colors.white, width: 1.0),
          //   right: BorderSide(color: Colors.white, width: 1.0),
          //
          // )
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
          ),
          // gradient: LinearGradient(colors:[Colors.red, Colors.black, Colors.yellow, Colors.green],
          //     tileMode: TileMode.mirror
          //     // begin: Alignment(3, 1)
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(3.0, 3.0), //(x,y)
              blurRadius: 6.0,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      // Center(
      //   child: IconButton(
      //     icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue, size: 50.00),
      //     onPressed: () {},
      //     iconSize: 50.00,
      //     color: Colors.white,
      //     splashColor: Colors.white,
      //     tooltip: 'Add a photo',
      //     hoverColor: Colors.yellow,
      //     highlightColor: Colors.red,
      //
      //   ),
      // ),
      //
      // Image.network('https://scontent.flos5-1.fna.fbcdn.net/v/t39.30808-6/489915339_3958101584457409_4396723041410600175_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=103&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeHbrz8hs8OHn3--ioEvD2qvYMnwYNbOtThgyfBg1s61OD2S1kGMb2mGj3DIp82m3iDLwPAsqoFLmcQDkdWmn07B&_nc_ohc=JS1cyLrOE4sQ7kNvwH5seHY&_nc_oc=Adn4_Dz4J1nzlAskvfwHeNIbkT_brNwLnzEXhlOu1XVZrVKLRGQVoR39Oqxj_g1hLF4&_nc_zt=23&_nc_ht=scontent.flos5-1.fna&_nc_gid=bJRe2dKnxkOSIw9IG5MnbQ&oh=00_AfHmoWPsC7_OQtBqCQAnZmIufLMq_98aqwGE-ggb3YFwxw&oe=6808663E', fit: BoxFit.cover, height: 1000, width: double.infinity,),
      // // Image(
      // //     image:
      // //     AssetImage('assets/images/background.jpg'),
      // //     // NetworkImage("https://scontent.flos5-1.fna.fbcdn.net/v/t39.30808-6/489915339_3958101584457409_4396723041410600175_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=103&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeHbrz8hs8OHn3--ioEvD2qvYMnwYNbOtThgyfBg1s61OD2S1kGMb2mGj3DIp82m3iDLwPAsqoFLmcQDkdWmn07B&_nc_ohc=JS1cyLrOE4sQ7kNvwH5seHY&_nc_oc=Adn4_Dz4J1nzlAskvfwHeNIbkT_brNwLnzEXhlOu1XVZrVKLRGQVoR39Oqxj_g1hLF4&_nc_zt=23&_nc_ht=scontent.flos5-1.fna&_nc_gid=bJRe2dKnxkOSIw9IG5MnbQ&oh=00_AfHmoWPsC7_OQtBqCQAnZmIufLMq_98aqwGE-ggb3YFwxw&oe=6808663E"),
      // //     height: 1000,
      // //     width: 800,
      // //     fit: BoxFit.cover,
      // //
      // // ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.add_circle),
        foregroundColor: Colors.white,
      ),
    );
  }
}
