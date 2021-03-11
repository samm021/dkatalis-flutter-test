class Validator {

  String validateEmail(String value) {
    if (value == '' || value == null) {
      return 'Please input email address';
    }
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please input in email address format';
    else
      return null;
  }

  bool hasLowercase(String value) {
    if (value == null || value == '') {
      return false;
    }
    Pattern pattern = r'[a-z]';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  bool hasUppercase(String value) {
    if (value == null || value == '') {
      return false;
    }
    Pattern pattern = r'[A-Z]';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  bool hasInteger(String value) {
    if (value == null || value == '') {
      return false;
    }
    Pattern pattern = r'[0-9]';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  bool hasLengthMoreThanEqual9(String value) {
    return value.length >= 9;
  }

  String complexity(bool hasLowercase, bool hasUppercase, bool hasInteger, bool hasLengthMoreThanEqual9) {
    int complexity = (hasLowercase ? 1 : 0) +
        (hasUppercase ? 1 : 0) +
        (hasInteger ? 1 : 0) +
        (hasLengthMoreThanEqual9 ? 1 : 0);
    String string;
    switch (complexity) {
      case 4:
        string = "Strong";
        break;
      case 3:
        string = "Medium";
        break;
      case 2:
        string = "Weak";
        break;
      case 1:
        string = "Very Weak";
        break;
      case 0:
        string = "";
        break;
    }
    return string;
  }

}


