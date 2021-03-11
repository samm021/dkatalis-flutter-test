import 'package:flutter/material.dart';
import 'package:ginfinans/utils/constants.dart';
import 'package:ginfinans/screens/password_screen.dart';
import 'package:ginfinans/components/bottom_button.dart';
import 'package:ginfinans/utils/validator.dart';

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomButton(
        onPressNext: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasswordScreen()
            ),
          );
        }
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Welcome to\n'
                              'GIN Finans',
                          textAlign: TextAlign.left,
                          style: kHeaderTextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Welcome to The Bank of The Future.\n'
                              'Manage and track your accounts on\n'
                              'the go.',
                          style: kBodyTextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          padding: EdgeInsets.all(20.0),
                          child: Form(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: TextFormField(
                              validator: (value) {
                                return Validator().validateEmail(value);
                              },
                              decoration: kEmailInputDecoration,
                            ),
                          ),
                        ),
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
