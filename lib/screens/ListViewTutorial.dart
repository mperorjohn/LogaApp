import 'package:flutter/material.dart';

class ListViewtutorial extends StatelessWidget {
  const ListViewtutorial({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample list of items (you can replace with your dynamic data)
    final List<Map<String, String>> salesReports = List.generate(
      15,
      (index) => {'title': 'Reported sales', 'date': '22-04-2025'},
    );

    String navbarTitle = "ListView Tutorial by john";

    return Scaffold(
      appBar: AppBar(
        title: Text("$navbarTitle"),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Container(
        child: ListView(
          itemExtent: 80.00,
          scrollDirection: Axis.vertical,
          reverse: false,
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.shopping_cart),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              title: Text('Testing 1'),
              subtitle: Text(
                'This clearly explain the to do',
                style: TextStyle(color: Colors.blue),
              ),
              trailing: Icon(Icons.add_shopping_cart),
              contentPadding: EdgeInsets.all(10),
              tileColor: Colors.brown.shade50,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.add_a_photo),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              title: Text('Testing 2'),
              subtitle: Text(
                'This clearly explain the to do',
                style: TextStyle(color: Colors.blue),
              ),
              trailing: Icon(Icons.add_shopping_cart),
              contentPadding: EdgeInsets.all(10),
              selectedColor: Colors.red,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.add_a_photo),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              title: Text('Testing 3'),
              subtitle: Text(
                'This clearly explain the to do',
                style: TextStyle(color: Colors.blue),
              ),
              trailing: Icon(Icons.add_shopping_cart),
              contentPadding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}

// ListView.builder(
// itemCount: salesReports.length,
// itemBuilder: (context, index) {
// final report = salesReports[index];
// return ListTile(
// leading: CircleAvatar(
// child: Icon(Icons.shopping_cart),
// backgroundColor: Colors.red,
// foregroundColor: Colors.white,
// ),
// title: Text(report['title']!),
// subtitle: Text(report['date']!),
// trailing: Icon(Icons.add_shopping_cart),
// // hoverColor: Colors.blue,
// // selected: true,
// tileColor: Colors.brown.shade50,
// onTap: () {
// // You can add actions here if needed
// },
// );
// },
// ),
