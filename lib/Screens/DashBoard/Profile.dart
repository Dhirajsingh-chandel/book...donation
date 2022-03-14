import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/DashBoard/Account/profile_Font.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {

  final String title = 'User Profile';
  @override
  _ProfileState createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  bool isEnable = true;
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(30),
             child:AppBar(
               shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
             ),
          ),
          resizeToAvoidBottomInset : false,
          body: SingleChildScrollView(
            reverse: true,
            child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,backgroundImage:  AssetImage('assets/icons/login.jpg'),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Name",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                        enabled: isEnable,
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          setState(() {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile_Font()));
                            isEnable = true;
                          });
                        })
                  ],
                ),
                SizedBox(height: 05),
                Text('dhiraj_chandel@gmail.com',
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight:  FontWeight.w400,
                      fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 10),
  ]
  ),
    ),
  )
        )
      );
  }

