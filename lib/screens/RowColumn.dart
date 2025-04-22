import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column"),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Image(image: AssetImage('assets/images/background.jpg'))),
              Expanded(flex : 2, child: Image(image: AssetImage('assets/images/background.jpg'))),
              Expanded(flex : 4,child: Image(image: AssetImage('assets/images/background.jpg'))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.red, size: 20.00),
              Icon(Icons.star, color: Colors.red, size: 20.00),
              Icon(Icons.star, color: Colors.red, size: 20.00),
              Icon(Icons.star, color: Colors.red, size: 20.00),
              Icon(Icons.star, color: Colors.red, size: 20.00),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(Icons.add_a_photo, color: Colors.red, size: 30.00),
                  Text(
                    "Profile",
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     Icon(Icons.shopping_cart, color: Colors.red, size: 30.00),
              //     Text(
              //       "Cart",
              //       style: TextStyle(color: Colors.red, fontSize: 15.0),
              //     ),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
