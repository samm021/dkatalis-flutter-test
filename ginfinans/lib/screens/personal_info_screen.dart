import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ginfinans/screens/schedule_screen.dart';
import 'package:ginfinans/utils/constants.dart';
import 'package:ginfinans/components/select_form_info.dart';
import 'package:ginfinans/components/bottom_button.dart';

class PersonalInfoScreen extends StatefulWidget {
  PersonalInfoScreen({this.registrationData});

  final registrationData;

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  List<String> goals = ['personal saving', 'retirement saving', 'emergency saving', 'etc'];
  List<String> incomes = ['3 - 5 million idr', '5 - 10 million idr', '10 - 20 million idr', 'more than 20 million idr'];
  List<String> expenses = ['3 - 5 million idr', '5 - 10 million idr', '10 - 20 million idr', 'more than 20 million idr'];
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
        onPressNext: (registrationData['goal'] != null && registrationData['income'] != null && registrationData['expense'] != null)
          ? () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ScheduleScreen(
                    registrationData: registrationData
                  )
              ),
            );
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
                  Text('Personal Information',
                    style: kContentScreenHeaderStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Please fill in the information below and your goal for digital saving',
                    style: kContentScreenBodyStyle,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Center(
                    child: SelectForm(
                      label: 'Goal for activation',
                      options: goals,
                      selectedItem: registrationData['goal'],
                      onSelect: (newValue) {
                        setState(() {
                          registrationData['goal'] = newValue;
                        });
                      },
                    )
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: SelectForm(
                      label: 'Monthly Income',
                      options: incomes,
                      selectedItem: registrationData['income'],
                      onSelect: (newValue) {
                        setState(() {
                          registrationData['income'] = newValue;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: SelectForm(
                      label: 'Monthly expense',
                      options: expenses,
                      selectedItem: registrationData['expense'],
                      onSelect: (newValue) {
                        setState(() {
                          registrationData['expense'] = newValue;
                        });
                      },
                    ),
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





