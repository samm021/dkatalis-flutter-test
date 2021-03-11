import 'package:flutter/material.dart';
import 'package:ginfinans/utils/constants.dart';

class SelectFormDateTime extends StatelessWidget {
  SelectFormDateTime({this.picker, this.data, this.type});

  final String type;
  final Function picker;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
      ),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0, top: 10.0),
            child: Text( (type == 'date') ? 'Date' : 'Time',
              style: kSelectOptionLabelStyle,
            ),
          ),
          ListTile(
            title: Text(
              (data != null) ? data : '- Choose ${(type == 'date') ? 'Date' : 'Time'} -' ,
              style: kSelectOptionHintStyle,
            ),
            dense: true,
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap: picker,
          )
        ],
      ),
    );
  }
}
