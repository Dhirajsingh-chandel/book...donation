import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/DashBoard/DashB.dart';
import 'package:flutter_auth/Screens/Login_Signup/signup.dart';
import 'package:flutter_auth/utility/validation.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return LoginPageState();
  }
}


// class Login {
//   String token;
//   String Email;
//   String Password;
//
//   Login(
//       {this.token, this.Email, this.Password});
//
//   Login.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//     Email = json['username'];
//     Password = json['password'];
//   }
// }


class LoginPageState extends State<LoginPage> {
  String _Email;
  String _Password;
  String _Image;
  String _Text;

 bool _isLoading = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  TextEditingController Password = TextEditingController();
  TextEditingController Email = TextEditingController();

  bool isHidePassword = true;

  get http => null;


    Login(String username , password) async {
      try {
        Response responce = await post(
            Uri.parse(
                "https://bookdonationapp.herokuapp.com/api/accounts/login/"),
            body: {
              'username': username,
              'password': password
            }
        );
        if (responce.statusCode == 200) {
          var data = jsonDecode(responce.body.toString());
          print(data);
          print('Login successfully completed');
        } else {
          print('filed not match ');
        }
      } catch (e) {
        print(e.toString());
      }
    }
      Widget _buildText() {
        return Container(
            child: Text('Login',
              style: GoogleFonts.tinos(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 30,
              ),
            )
        );
      }

      Widget _buildEmail() {
        return TextFormField(
          validator: validateEmail,
          controller: Email,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(labelText: 'Email',
            prefixIcon: Icon(Icons.email, color: Colors.black,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70),
              borderSide: BorderSide(color: Colors.black,
              ),
            ),
          ),
          onSaved: (String value) {
            _Email = value;
          },
        );
      }

      Widget _buildPassword() {
        return TextFormField(
          controller: Password,
          obscureText: isHidePassword,
          decoration: InputDecoration(labelText: 'Password',
              prefixIcon: Icon(Icons.lock, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(70),
                borderSide: BorderSide(color: Colors.black,
                ),
              ),
              suffixIcon: IconButton(
                icon:
                isHidePassword
                    ? Icon(Icons.visibility_off, color: Colors.black)
                    : Icon(Icons.visibility, color: Colors.black),
                onPressed: _togglePassword,
              )
          ),
          // validator: (String value) {
          //   if (value.isEmpty) {
          //     return 'Password is Required';
          //   }
          //   if (!RegExp(
          //       "^(?=.*[A-Za-z])(?=.*\d)(?=.*[0-9])(?=.{8,})"
          //
          //       )
          //       .hasMatch(value)) {
          //     return 'Please enter a valid Password';
          //   }
          //
          //   return null;
          // },
          onSaved: (String value) {
            _Password = value;
          },
        );
      }

      Widget _buildImage() {
        return Container(
            height: 200,
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/icons/loginBG.jpg"),
                )
            )
        );
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0), // here the desired height
            child: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _buildText(),
                        SizedBox(height: 30),
                        _buildImage(),
                        SizedBox(height: 30),
                        _buildEmail(),
                        SizedBox(height: 21),
                        _buildPassword(),
                        SizedBox(height: 35),
                        RaisedButton(
                          padding: EdgeInsets.only(
                              left: 40, right: 40, bottom: 10, top: 10),
                          textColor: Colors.white,
                          color: Colors.black,
                          child: Text("Login",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onPressed: () {
                            Email.text == "" || Password.text == ""
                                ? null : () {
                              setState(() {
                                _isLoading = true;
                              });
                              // Login(Email.text , Password.text);
                            };
                            //login()
                            //   Login(
                            //       Email.text.toString(), Password.text.toString());

                            //  if (!_formKey.currentState.validate()) {
                            //   return;
                            // }
                            // _formKey.currentState.save();
                            // this.setState(() {
                            //   Email.clear();
                            //   Password.clear();
                            // });
                            //
                            // print(_Email);
                            // print(_Password);
                            // print(_Text);
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(70.0),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(
                          focusColor: Colors.transparent,
                          elevation: 100,
                          //add this line
                          color: Colors.transparent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashB())
                            );
                          },
                          child: Text(
                            'Dont have an account?     Sign up',
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ]
                  ),
                )
            ),
          ),
        );
      }

      void _togglePassword() {
        setState(() {
          isHidePassword = !isHidePassword;
        });
      }
    }


