import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(106, 98, 183, 1),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(106, 98, 183, 1)),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Please enter your username'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Please enter your password'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: SizedBox(
                              height: 50,
                              width: 500,
                              child: ElevatedButton(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 18),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(106, 98, 183, 1),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
