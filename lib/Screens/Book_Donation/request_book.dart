import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Request_Book extends StatefulWidget {
  const Request_Book({
    Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    return Request_BookState();
  }
}

class Request_BookState extends State<Request_Book> {
  String _book_category;
  String _book_name;
  String _author;
  String _publisher;
  String _book_sr_no;
  String _desc;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildbook_category() {
    var _ratingController;
    return Column(
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              padding: EdgeInsets.only( top: 4, left: 0, right: 60, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black38
                  )
              ),
              child:  DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.category , color: Colors.black),
                    enabledBorder: InputBorder.none,
                  ),
                  value: _ratingController,
                  items: ["Programming","Languages", "Novels","Action","Horror","Adventure",
                  "Comic", "Science", "History" , "Others"]
                      .map((label) => DropdownMenuItem(
                    child: Text(label.toString()),
                    value: label,
                  )).toList(),
                  hint: Text('Select Book Category'),
                  validator: (value) => value == null ? 'field required' : null,
                  onChanged: (value) {
                    setState(() {
                      var _ratingController = value;
                    }
                    );
                  }
              ),
            ),
          ),
        )
      ],
    );

  }

  Widget _buildbook_name() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Book Name',
        prefixIcon: Icon(Icons.book , color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),

        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Book Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _book_name = value;
      },
    );
  }


  Widget _buildauthor() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Author',
        prefixIcon: Icon(Icons.admin_panel_settings_sharp , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
        focusColor: Colors.black,
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Author is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _author = value;
      },
    );
  }


  Widget _buildpublisher() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Publisher',
        prefixIcon: Icon(Icons.person , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
        focusColor: Colors.black,
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Publisher is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _publisher = value;
      },
    );
  }




  Widget _buildbook_sr_no() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Book Sr. No.',
        prefixIcon: Icon(Icons.password , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
        focusColor: Colors.black,
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Book Sr. No. is Required';
        }
        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _book_sr_no = value;
      },
    );
  }

  Widget _builddesc() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Description',
        prefixIcon: Icon(Icons.description , color: Colors.black,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: Colors.black,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Description is Required';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _desc = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request For a Book',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight:  FontWeight.w400,
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
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
                    _buildbook_category(),
                    SizedBox( height: 21 ),
                    _buildbook_name(),
                    SizedBox( height: 21 ),
                    _buildauthor(),
                    SizedBox( height: 21 ),
                    _buildpublisher(),
                    SizedBox( height: 21 ),
                    _buildbook_sr_no(),
                    SizedBox( height: 21 ),
                    _builddesc(),
                    SizedBox( height: 21 ),
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
                        print(_book_category);
                        print(_book_name);
                        print(_author);
                        print(_publisher);
                        print(_book_sr_no);
                        print(_desc);
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