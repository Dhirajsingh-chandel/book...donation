import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Account extends StatefulWidget {
  const Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(right: 20 , left: 20),
            child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person , color: Colors.black,),
              hintText: 'Your Name',
              hintStyle: TextStyle(fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(70),
                borderSide: BorderSide(color: Colors.black,
                ),
              ),
              fillColor: Colors.amber,
            ),
          ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(right: 20 , left: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email , color: Colors.black,),
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                  borderSide: BorderSide(color: Colors.black,
                  ),
                ),
                /*fillColor: Colors.amber,*/
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(right: 20 , left: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone , color: Colors.black,),
                hintText: 'Contact',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                  borderSide: BorderSide(color: Colors.black,
                  ),
                ),
                /*fillColor: Colors.amber,*/
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(right: 20 , left: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on , color: Colors.black,),
                hintText: 'Address',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                  borderSide: BorderSide(color: Colors.black,
                  ),
                ),
                fillColor: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(right: 20 , left: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person , color: Colors.black,),
                hintText: 'Your Name',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                  borderSide: BorderSide(color: Colors.black,
                  ),
                ),
                fillColor: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(right: 20 , left: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person , color: Colors.black,),
                hintText: 'Your Name',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                  borderSide: BorderSide(color: Colors.black,
                  ),
                ),
                fillColor: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(right: 20 , left: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.flag, color: Colors.black,),
                hintText: 'Your Name',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(70),
                  borderSide: BorderSide(color: Colors.black,
                  ),
                ),
                fillColor: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            child:
                Icon(Icons.person , color: Colors.black,),
          ),
        ]
      )
    );
  }
}
