import 'package:flutter/material.dart';
import 'package:stock_keeper/widgets/board_item.dart';
import 'package:stock_keeper/widgets/home_user_detail.dart';
import 'package:stock_keeper/widgets/item.dart';
import 'package:stock_keeper/widgets/shape_clipper.dart';

class HomeScreen extends StatelessWidget {
  static const nameRoute = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Keeper'),
        leading: Icon(Icons.local_grocery_store),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: 'Settings',
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(color: Colors.deepOrangeAccent),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                  child: HomeUserDetail(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 180.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0.0, 3.0),
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BoardItem(
                                icon: Icon(Icons.local_grocery_store),
                                text: 'Stocks',
                                color: Colors.purple,
                              ),
                              BoardItem(
                                icon: Icon(Icons.credit_card),
                                text: 'Expenses',
                                color: Colors.redAccent,
                              ),
                              BoardItem(
                                icon: Icon(Icons.attach_money),
                                text: 'Reimburse',
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Text(
                'Items',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.0, bottom: 25.0),
              child: Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Item(networkImage: "https://placeimg.com/640/480/any",),
                    Item(networkImage: "https://placeimg.com/640/480/any",),
                    Item(networkImage: "https://placeimg.com/640/480/any",),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Stock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Analyze',
          ),
        ],
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700],
        // onTap: _onItemTapped,
      ),
    );
  }
}
