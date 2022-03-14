import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Profile_Font extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return Profile_FontState();
  }
}

class Profile_FontState extends State<Profile_Font> {
  String _fname;
  String _lname;
  String _username;
  String _email;
  String _contact;
  String _Country;
  String _state;
  String _city;
  String _pincode;
  String _address;



  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildfname() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'First Name',
        prefixIcon: Icon(Icons.person , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _fname = value;
        },
    );
  }

  Widget _buildlname() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Last Name',
        prefixIcon: Icon(Icons.person , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _lname = value;
      },
    );
  }


  Widget _buildusername() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'User Name',
        prefixIcon: Icon(Icons.person , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Username is Required';
        }
        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _username = value;
      },
    );
  }

  Widget _buildemail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email',
        prefixIcon: Icon(Icons.email , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildcontact() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mobile Number',
        prefixIcon: Icon(Icons.lock , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Mobile Number is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _contact = value;
      },
    );
  }

  Widget _buildlCountry() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Country',
        prefixIcon: Icon(Icons.flag , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _Country = value;
      },
    );
  }

  Widget _buildState() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'State',
        prefixIcon: Icon(Icons.location_on , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      keyboardType: TextInputType.streetAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'State is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _state = value;
      },
    );
  }

  Widget _buildcity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'City',
        prefixIcon: Icon(Icons.location_on , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      keyboardType: TextInputType.streetAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'State is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _city = value;
      },
    );
  }

  Widget _buildpincode() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Pin Code',
        prefixIcon: Icon(Icons.pin , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Pin Code is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _pincode = value;
      },
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address',
        prefixIcon: Icon(Icons.location_on , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      keyboardType: TextInputType.streetAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'State is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Your Profile',
            style: GoogleFonts.lato(
          color: Colors.black,
          fontWeight:  FontWeight.w400,
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
        ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.amber,
        shadowColor: Colors.transparent,

      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildfname(),
            SizedBox( height: 21 ),
                _buildlname(),
            SizedBox( height: 21 ),
                _buildusername(),
            SizedBox( height: 21 ),
                _buildemail(),
            SizedBox( height: 21 ),
                _buildcontact(),
            SizedBox( height: 21 ),
                _buildlCountry(),
            SizedBox( height: 21 ),
                _buildState()  ,
            SizedBox( height: 21 ),
                _buildcity(),
            SizedBox(height: 21),
                _buildpincode(),
            SizedBox(height: 21),
                _buildaddress(),
            SizedBox(height: 21),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.black,
              child: Text("Submit",
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight:  FontWeight.w400,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
              ),
              ),
              onPressed: () {

                if (!_formKey.currentState.validate()) {
                  return;
                }
                _formKey.currentState.save();
                print(_fname);
                print(_lname);
                print(_username);
                print(_email);
                print(_Country);
                print(_pincode);
                print(_contact);
                print(_state);
                print(_city);
                print(_address);
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(70.0),

              ),
            ),
                ]
            )
          ),
        ),
      ),
    );
  }
}