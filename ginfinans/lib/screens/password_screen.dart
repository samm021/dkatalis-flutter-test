import 'package:flutter/material.dart';
import 'package:ginfinans/screens/personal_info_screen.dart';
import 'package:ginfinans/utils/constants.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Create Account')
      ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Container(
            height: 70.0,
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen()
                    ),
                  );
                },
                color: Colors.blue[300],
                textColor: Colors.white,
                child: Text('Next')
            ),
          ),
        ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Create Password',
                        style: kPasswordScreenHeaderStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Password will be used to login to account',
                        style: kPasswordScreenBodyStyle,
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Container(
                        child: TextField(
                          decoration: kPasswordInputDecoration,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text('Complexity',
                          style: kPasswordScreenBodyStyle,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('Very Weak',
                            style: kPasswordScreenComplexityStyle,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('a',
                              style: kPasswordScreenHeaderStyle,
                              ),
                              Text('Lowercase',
                              style: kPasswordScreenBodyStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('A',
                                style: kPasswordScreenHeaderStyle,
                              ),
                              Text('Uppercase',
                                style: kPasswordScreenBodyStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('123',
                                style: kPasswordScreenHeaderStyle,
                              ),
                              Text('Number',
                                style: kPasswordScreenBodyStyle,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('9+',
                                style: kPasswordScreenHeaderStyle,
                              ),
                              Text('Characters',
                                style: kPasswordScreenBodyStyle,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
