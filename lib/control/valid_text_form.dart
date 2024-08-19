class ValidForm {
  static String? emailValid(String? value) {
    final r = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!r.hasMatch(value!)) {
      return "email not correct";
    }
    return null;
  }
  static String? nameValid(String? value) {
    if (value!.length < 10) {
      return "Enter value great than 10 char";
    }
    return null;
  }
  static String? passValid(String? value) {
    if (value!.length < 6) {
      return "Enter value great than 6 char";
    }
    return null;
  }
}
