import 'package:flutter/material.dart';
import 'package:ginfinans/screens/personal_info_screen.dart';
import 'package:ginfinans/utils/constants.dart';
import 'package:ginfinans/components/bottom_button.dart';
import 'package:ginfinans/components/password_text_field.dart';
import 'package:ginfinans/utils/validator.dart';

class PasswordScreen extends StatefulWidget {
  PasswordScreen({this.registrationData});

  final registrationData;

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool visibility = false;
  bool lowercase = false;
  bool uppercase = false;
  bool integer = false;
  bool lengthMoreThan9 = false;
  TextEditingController controller = TextEditingController();
  Map registrationData;

  @override
  void initState() {
    super.initState();
    registrationData = {...widget.registrationData};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      appBar: AppBar(
        title: Text('Create Account'),
        backgroundColor: Colors.blueAccent[200],
      ),
        bottomNavigationBar: BottomButton(
          onPressNext: (lowercase && uppercase && integer && lengthMoreThan9)
            ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PersonalInfoScreen(
                      registrationData: registrationData
                    )
                ),
              ).then((value) {
                controller.clear();
                setState(() {
                  visibility = false;
                  lowercase = false;
                  uppercase = false;
                  integer = false;
                  lengthMoreThan9 = false;
                });
              });
            }
            : null
        ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Create Password',
                    style: kContentScreenHeaderStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Password will be used to login to account',
                    style: kContentScreenBodyStyle,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    child: PasswordTextField(
                      passwordVisible: visibility,
                      onIconPress: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                      onUserWritePassword: (value) {
                        setState(() {
                          lowercase = Validator().hasLowercase(value);
                          uppercase = Validator().hasUppercase(value);
                          integer = Validator().hasInteger(value);
                          lengthMoreThan9 = Validator().hasLengthMoreThanEqual9(value);
                          registrationData['password'] = value;
                        });
                      },
                      passwordFieldController: controller,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('Complexity',
                      style: kContentScreenBodyStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(Validator().complexity(
                          lowercase, uppercase, integer, lengthMoreThan9
                      ),
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
                          lowercase
                          ? kWhiteCheckGreenFilled
                          : Text('a',
                            style: kContentScreenHeaderStyle,
                          ),
                          Text('Lowercase',
                          style: kContentScreenBodyStyle,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          uppercase
                          ? kWhiteCheckGreenFilled
                          : Text('A',
                            style: kContentScreenHeaderStyle,
                          ),
                          Text('Uppercase',
                            style: kContentScreenBodyStyle,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          integer
                          ? kWhiteCheckGreenFilled
                          : Text('123',
                            style: kContentScreenHeaderStyle,
                          ),
                          Text('Number',
                            style: kContentScreenBodyStyle,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          lengthMoreThan9
                          ? kWhiteCheckGreenFilled
                          : Text('9+',
                            style: kContentScreenHeaderStyle,
                          ),
                          Text('Characters',
                            style: kContentScreenBodyStyle,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


