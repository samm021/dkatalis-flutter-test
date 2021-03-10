import 'package:flutter/material.dart';
import 'package:ginfinans/utils/constants.dart';
import 'package:ginfinans/screens/password_screen.dart';

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      builder: (context) => PasswordScreen()
                  ),
                );
              },
              color: Colors.blue,
              child: Text('Next')
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 160.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      Text('Welcome to Gin '
                          'Finans',
                      style: kHeaderTextStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Welcome to The Bank of The Future. '
                          'Manage and track your accounts on '
                          'the go.',
                      style: kBodyTextStyle,
                      ),
                      SizedBox(
                      height: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.all(20.0),
                        child: TextField(
                          decoration: kEmailInputDecoration,
                        ),
                      ),
                    ],
                  ),
                ),
            ]
        ),
      ),
    );
  }
}
