import 'package:flutter/material.dart';
import 'package:ginfinans/utils/constants.dart';
import 'package:ginfinans/screens/password_screen.dart';
import 'package:ginfinans/components/bottom_button.dart';
import 'package:ginfinans/utils/validator.dart';
import 'package:ginfinans/components/background_clipper.dart';

class EmailScreen extends StatefulWidget {
  EmailScreen({this.registrationData});

  final registrationData;

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  String validator;
  Map registrationData;

  @override
  void initState() {
    super.initState();
    registrationData = {...widget.registrationData};
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomButton(
        whatScreen: 'emailScreen',
        onPressNext: (registrationData['email'] != null && validator == null)
          ? () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PasswordScreen(
                    registrationData: registrationData
                  )
              ),
            );
          }
        : null,
      ),
      backgroundColor: Colors.blueAccent[200],
      body: SafeArea(
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                  color: Colors.grey[100],
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 150.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            text: 'Welcome to\nGIN ',
                            style: kHomeScreenHeaderTextStyle,
                            children: <TextSpan>[
                              TextSpan(text: 'Finans',
                                  style: kHomeScreenHeaderTextStyleEnding
                                ),
                              ],
                            ),
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
                        style: kHomeScreenTextStyle,
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
                          child: TextFormField(
                            autocorrect: false,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              validator = Validator().validateEmail(value);
                              return validator;
                            },
                            onChanged: (value) {
                              setState(() {
                                registrationData['email'] = value;
                              });
                            },
                            decoration: kEmailInputDecoration,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}


