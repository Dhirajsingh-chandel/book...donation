import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/DashBoard/DashB.dart';
import 'package:flutter_auth/Screens/DashBoard/Donate.dart';
import 'package:flutter_auth/Screens/DashBoard/Request.dart';
class Home extends StatefulWidget {

  const Home({
    Key key,
  }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child:Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            icon: Icon(Icons.filter_alt_outlined),
            onPressed: () {},
          ),
          SizedBox(
            width: 20,
          ),
        ],
          automaticallyImplyLeading: false,
          title: const Text('BOOK DONATION'),
        backgroundColor: Colors.amber,
        //title: "BooK Donation",
          bottom: TabBar(
            tabs: [
              Tab(text: 'Donated Books'),
              Tab(text: 'Requested Books')
            ],
          )
      ),
      body: TabBarView(
        children: const <Widget>[
          Donate(),
          Request()
       ],
      ),
    ),
  );
}





