import 'package:flutter/material.dart';
import 'package:ginfinans/components/bottom_button.dart';
import 'package:ginfinans/utils/constants.dart';
import 'package:ginfinans/components/animated_calendar_icon.dart';
import 'package:ginfinans/components/select_form_date_time.dart';
import 'package:ginfinans/utils/validator.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({this.registrationData});

  final registrationData;

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> with TickerProviderStateMixin {
  Map registrationData;
  AnimationController animationController;
  String dateString;
  String timeString;

  @override
  void initState() {
    super.initState();
    registrationData = {...widget.registrationData};
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
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
          onPressNext: (registrationData['date'] != null && registrationData['time'] != null)
            ? () {
            // Assume: API Post
            print(registrationData);
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
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AnimatedCalendarIcon(
                        animationController: animationController
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text('Schedule Video Call',
                    style: kContentScreenHeaderStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Choose the date and time that you preferred, we\n'
                      'will send a link via email to make a video call on\n'
                      'the scheduled date and time.',
                    style: kContentScreenBodyStyle,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  SelectFormDateTime(
                    picker: pickDate,
                    data: dateString,
                    type: 'date',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SelectFormDateTime(
                    picker: pickTime,
                    data: timeString,
                    type: 'time',
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
  pickDate() async {
    DateTime date = await showDatePicker(
        context: context,
        firstDate: DateTime.now().subtract(Duration(days: 0)),
        lastDate: DateTime(DateTime.now().year + 1),
        initialDate: DateTime.now(),
    );

    if (date != null) {
      String hari = Validator().indonesianDate(date.weekday);
      String bulan = Validator().indonesianMonth(date.month);
      setState(() {
        dateString = '$hari, ${date.day} $bulan ${date.year}';
        registrationData['date'] = '${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')}';
      });
    }
  }

  pickTime() async {
    TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null) {
      setState(() {
        timeString = time.format(context).toString();
        registrationData['time'] = time.format(context);
      });
    }
  }
}



