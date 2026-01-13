import 'dart:io';

class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        .hasMatch(password);
  }

    static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phoneNumber);
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'^(?=.*[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }

  static bool passwordSatisfyAllCondition(String password){
    return hasLowerCase(password) && hasUpperCase(password) && hasNumber(password) && hasSpecialCharacter(password) && hasMinLength(password);
  }

    static bool isImageExtensionValid(String path) {
    final extension = path.split('.').last.toLowerCase();
    return extension == 'jpg' || extension == 'jpeg' || extension == 'png';
  }
  static Future<bool> isImageSizeValid(String path) async {
    final file = File(path);
    final sizeInBytes = await file.length();
    const maxSizeInBytes = 5 * 1024 * 1024;
    return sizeInBytes <= maxSizeInBytes;
  }
}
