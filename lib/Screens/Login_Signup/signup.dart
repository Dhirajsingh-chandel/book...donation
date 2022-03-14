import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
import 'package:http/http.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({
    Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {


    return SignupPageState();
  }
}

class SignupPageState extends State<SignupPage> {
  String _Email;
  String _Password1;
  String _Password2;
  String _Image;
  String _Text;

  bool isHidePassword = true;
  bool _isLoading  = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController Password = TextEditingController();
  TextEditingController Email = TextEditingController();


  Widget _buildText() {
    return Container(
        child: Text('Signup',
          style: GoogleFonts.tinos(
            color: Colors.black,
            fontWeight:  FontWeight.w400,
            fontSize: 30,
          ),
        )
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: Email,
      decoration: InputDecoration(labelText: 'Email',
        prefixIcon: Icon(Icons.email , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      // validator: (String value) {
      //   if (value.isEmpty) {
      //     return 'Email is Required';
      //   }
      //   if (!RegExp(
      //       r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
      //       .hasMatch(value)) {
      //     return 'Please enter a valid email Address';
      //   }
      //
      //   return null;
      // },
      onSaved: (String value) {
        _Email = value;
      },
    );
  }

  Widget _buildPassword1() {
    return TextFormField(
      controller: Password,
      obscureText: isHidePassword,
      decoration: InputDecoration(labelText: 'Password',
        prefixIcon: Icon(Icons.lock , color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
          suffixIcon: IconButton(
            icon:
            isHidePassword ? Icon(Icons.visibility_off , color: Colors.black) : Icon(Icons.visibility , color: Colors.black),
            onPressed: _togglePassword,
          ),
      ),
      // validator: (String value) {
      //   if (value.isEmpty) {
      //     return 'Password is Required';
      //   }
      //
      //   if (!RegExp(
      //       "^(?=.*[A-Za-z])(?=.*\d)(?=.*[0-9])(?=.{8,})"
      //   )
      //       .hasMatch(value)) {
      //     return 'Please enter a valid Password';
      //   }
      //
      //   return null;
      // },
      onSaved: (String value) {
        _Password1 = value;
      },
    );
  }

  Widget _buildPassword2() {
    return TextFormField(
      obscureText: isHidePassword,
      decoration: InputDecoration(labelText: 'Confirm Password',
        prefixIcon: Icon(Icons.lock , color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
       validator: (String value) {
         if (value.isEmpty) {
           return 'Password is required';
         }if (_Password1 != _Password2){
             return 'Password Do Not Match';
           }
           return null;
         },

    );
  }

  Widget _buildImage() {
    return Container(
        height: 200,
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/icons/signup.png"),
            )
        )
    );
  }



  // singUp(String username , password) async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   Response responce = await post(
  //       Uri.parse("https://bookdonationapp.herokuapp.com/api/accounts/login/"),
  //       body: {
  //         'username' : username,
  //         'password' : password
  //       }
  //   );
  //   var  jsonResponse;
  //   //Map body =  {'username' : username,'password' : password };
  //   //var  jsonResponse ;
  //   //var res = await http.post(url, body: body);
  //
  //   if(responce.statusCode == 200){
  //     jsonResponse = json.decode(responce.body);
  //
  //     print("responce status : ${responce.statusCode}");
  //     print("responce status : ${responce.body}");
  //
  //     if(jsonResponse != null) {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //       sharedPreferences.setString("token", jsonResponse["token"]);
  //       Navigator.of(context).pushAndRemoveUntil(
  //           MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
  //               (Route<dynamic> route) => false);
  //     }
  //     else{
  //       setState(() {
  //         _isLoading = false;
  //       });
  //       print("responce status : ${responce.body}");
  //     }
  //   }
  // }



  // void singUp(String email , password) async{
  //   try{
  //     Response responce = await post(
  //       Uri.parse("http://bookdonationapp.herokuapp.com/api/accounts/register/"),
  //       body: {
  //         'email' : email,
  //         'password' : password
  //       }
  //     );
  //     if(responce.statusCode == 200){
  //       var data = jsonDecode(responce.body.toString());
  //       print(data);
  //       print('Registration successfully completed');
  //
  //     }else{
  //       print('filed not match ');
  //     }
  //   }catch(e){
  //     print(e.toString());
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox( height: 20 ),
                    _buildText(),
                    SizedBox( height: 30 ),
                    _buildImage(),
                    SizedBox( height: 30 ),
                    _buildEmail(),
                    SizedBox( height: 21 ),
                    _buildPassword1(),
                    SizedBox( height: 21 ),
                    _buildPassword2(),
                    SizedBox( height: 35 ),
                    RaisedButton(
                        padding: EdgeInsets.only(left: 40 , right:40 ,bottom: 10, top: 10),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text("Signup",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight:  FontWeight.w400,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      onPressed: () {
                        Email.text == "" || Password.text == ""
                            ?null : (){
                          setState(() {
                            _isLoading = true;
                          });
                //          singUp(Email.text , Password.text);
                        };
                          //singUp( Email.text.toString() , Password.text.toString());
                          //
                          // if (!_formKey.currentState.validate()) {
                          //   return;
                          // }
                          // _formKey.currentState.save();
                          // print(_Image);
                          // print(_Email);
                          // print(_Password1);
                          // print(_Password2);
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
                      elevation : 100, //add this line
                      color: Colors.transparent,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage())
                        );
                      },
                      child: Text(
                        'Already have an account?     Login',
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight:  FontWeight.w400,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ]
              )
          ),
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