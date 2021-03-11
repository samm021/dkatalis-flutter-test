import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ginfinans/screens/schedule_screen.dart';
import 'package:ginfinans/utils/constants.dart';
import 'package:ginfinans/components/select_form.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          title: Text('Create Account')
      ),
      bottomNavigationBar: BottomButton(
        onPressNext: () {
          if (widget.registrationData['goal'] != '' && widget.registrationData['income'] != '' && widget.registrationData['expense'] != '') {
            print(widget.registrationData);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ScheduleScreen()
              ),
            );
          }
        },
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
                      Text('Personal Information',
                        style: kPasswordScreenHeaderStyle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Please fill in the information below and your goal for digital saving',
                        style: kPasswordScreenBodyStyle,
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Center(
                        child: SelectForm(
                          label: 'Goal for activation',
                          options: goals,
                          selectedItem: widget.registrationData['goal'],
                          onSelect: (newValue) {
                            setState(() {
                              widget.registrationData['goal'] = newValue;
                            });
                          },
                        )
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: SelectForm(
                          label: 'Monthly Income',
                          options: incomes,
                          selectedItem: widget.registrationData['income'],
                          onSelect: (newValue) {
                            setState(() {
                              widget.registrationData['income'] = newValue;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: SelectForm(
                          label: 'Monthly expense',
                          options: expenses,
                          selectedItem: widget.registrationData['expense'],
                          onSelect: (newValue) {
                            setState(() {
                              widget.registrationData['expense'] = newValue;
                            });
                          },
                        ),
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





