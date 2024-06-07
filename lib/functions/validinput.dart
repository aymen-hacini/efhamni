import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "please enter a valid username";
    }
    if (val.length < min) {
      return "this field should be at least $min letters";
    }
    if (val.length > max) {
      return "this field should be at most $max letters";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "please enter a valid email";
    }
    if (val.length < min) {
      return "this field should be at least $min letters";
    }
    if (val.length > max) {
      return "this field should be at most $max letters";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "your phone number isnt valid";
    }
    if (val.length < min) {
      return "this field should be at least $min letters";
    }
    if (val.length > max) {
      return "this field should be at most $max letters";
    }
  }
  if (type == "password") {
    if (val.length < min) {
      return "this field should be at least $min letters";
    }
    if (val.length > max) {
      return "this field should be at most $max letters";
    }
  }
}
