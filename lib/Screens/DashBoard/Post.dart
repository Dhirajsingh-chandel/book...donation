import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/DashBoard/Model_Sheet_Donate.dart';
class Post extends StatefulWidget {

  const Post({Key key}) : super(key: key);
  @override
  _PostState createState() => _PostState();

}
class _PostState extends State<Post> {
  ModelDonate model = new ModelDonate();
  @override

  Widget build(BuildContext context) =>

      Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: ()  => model.mainBottomsheet(context) ,
            )
          ],
          title: const Text('BOOK DONATION'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        );
}