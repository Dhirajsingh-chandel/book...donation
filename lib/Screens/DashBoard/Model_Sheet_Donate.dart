import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Book_Donation/donate_book.dart';
import 'package:flutter_auth/Screens/Book_Donation/request_book.dart';

class ModelDonate {
  mainBottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext contex) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              _createTile1(context, "Donated Book", Icons.book , _action1() , Colors.amber ),
              SizedBox(
                height: 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              _createTile2(context, "Requested Book", Icons.book , _action2() , Colors.amber),

            ],

          );
        }
    );
  }

  ListTile _createTile1(BuildContext context, String name, IconData icon,
      action , colors) {
    return ListTile(
        leading: Icon(icon),
        title: Text(name),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Book_Donate()
            ),
          );
        }
    );
  }
  _action1() {
    Book_Donate();
  }


  ListTile _createTile2(BuildContext context, String name, IconData icon,
      action , color) {
    return ListTile(
        leading: Icon(icon),
        title: Text(name),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Request_Book()
            ),
          );
            }
    );
  }
  _action2() {
    Request_Book();
  }

}



