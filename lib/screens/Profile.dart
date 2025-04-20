import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator( color: Colors.red,), // Loading animation
            SizedBox(height: 20),
            Text("Loading...", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
