import 'package:get/get.dart';

class Controller extends GetxController {
  String codeMorse = "";
  String alpha = "";
  void upDateCodeMorse(String value) {
    codeMorse = value;
    update();
  }

  void upDateAlpha(String value) {
    alpha = value;
    update();
  }
}
