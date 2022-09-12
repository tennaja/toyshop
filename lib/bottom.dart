import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/product/components/product_card.dart';
import 'package:flutter_application_1/screens/product/products_screen.dart';
class BotttomnavigatorBar extends StatefulWidget {
  const BotttomnavigatorBar({Key key}) : super(key: key);

  @override
  State<BotttomnavigatorBar> createState() => _BotttomnavigatorBarState();
}

class _BotttomnavigatorBarState extends State<BotttomnavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(children: [
          ProductsScreen(),
          Text('data'),
          Text('Doktong'),
          Text('Doktong'),
        ],),
        bottomNavigationBar: TabBar(tabs: [
          Tab(icon: Icon(Icons.home_sharp,color: Colors.black,)),
          Tab(icon: Icon(Icons.list_alt_rounded,color: Colors.black,)),
          Tab(icon: Icon(Icons.notifications,color: Colors.black,)),
          Tab(icon: Icon(Icons.account_circle_rounded,color: Colors.black,)),

        ]),
      )
    );
    
  }
}
