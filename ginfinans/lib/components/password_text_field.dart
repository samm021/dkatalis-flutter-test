import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {

  PasswordTextField({this.passwordVisible, this.onIconPress, this.onUserWritePassword});

  final bool passwordVisible;
  final Function onIconPress;
  final onUserWritePassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Create Password',
        suffixIcon: IconButton(
          icon: Icon(
            passwordVisible
                ? Icons.visibility_off
                : Icons.visibility
            ,
            color: Colors.blue,
          ),
          onPressed: onIconPress,
        ),
        hintStyle: TextStyle(
            color: Colors.grey
        ),
        errorStyle: TextStyle(
            color: Colors.white
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide.none
        ),
      ),
      obscureText: !passwordVisible,
      enableSuggestions: false,
      autocorrect: false,
      onChanged: onUserWritePassword,
    );
  }
}