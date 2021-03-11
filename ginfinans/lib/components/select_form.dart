import 'package:flutter/material.dart';
import 'package:ginfinans/utils/constants.dart';

class SelectForm extends StatelessWidget {

  SelectForm({this.label, this.options, this.onSelect, this.selectedItem});

  final String label;
  final List options;
  final Function onSelect;
  final String selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
            style: kSelectOptionLabelStyle,
          ),
          DropdownButtonFormField(
            decoration: InputDecoration.collapsed(),
            isExpanded: true,
            isDense: true,
            icon: Icon(Icons.keyboard_arrow_down),
            hint: Text('- Choose Option -',
              style: kSelectOptionHintStyle,
            ),
            value: selectedItem,
            onChanged: onSelect,
            items: options.map((option) {
              return DropdownMenuItem(
                child: Text(option),
                value: option,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}