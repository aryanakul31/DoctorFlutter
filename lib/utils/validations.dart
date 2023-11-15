import '../resources/strings.dart';

const patternEmail = r"^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$";
const patternPassword =
    r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";

class Validations {

  static String? validPhone(String? phone) {
    return null;
  }

  static String? validEmail(String? email) {
    if (email == null || email.isEmpty) {
      return Strings.emptyEmail;
    }

    RegExp emailPattern = RegExp(patternEmail);

    return emailPattern.hasMatch(email) ? null : Strings.invalidEmail;
  }

  static String? validPassword(String? password) {
    if (password == null || password.isEmpty) {
      return Strings.emptyPassword;
    }

    RegExp passwordPattern = RegExp(patternPassword);
    return passwordPattern.hasMatch(password) ? null : Strings.invalidPassword;
  }
}
