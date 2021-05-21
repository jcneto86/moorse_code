// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:MoorseCode/control/morse-control.dart';
import 'package:MoorseCode/model/morse-model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final morseControl = new MorseControll();
  test(" :: An alpha character is converted to morse correctly", () {
    expect(MorseModel.getMorse('A'), ".-");
    expect(MorseModel.getMorse('B'), "-...");
    expect(MorseModel.getMorse('C'), "-.-.");
    expect(MorseModel.getMorse('D'), "-..");
    expect(MorseModel.getMorse('E'), ".");
    expect(MorseModel.getMorse('F'), "..-.");
    expect(MorseModel.getMorse('G'), "--.");
    expect(MorseModel.getMorse('H'), "....");
    expect(MorseModel.getMorse('I'), "..");
    expect(MorseModel.getMorse('J'), ".---");
    expect(MorseModel.getMorse('K'), "-.-");
    expect(MorseModel.getMorse('L'), ".-..");
    expect(MorseModel.getMorse('M'), "--");
    expect(MorseModel.getMorse('N'), "-.");
    expect(MorseModel.getMorse('O'), "---");
    expect(MorseModel.getMorse('P'), ".--.");
    expect(MorseModel.getMorse('Q'), "--.-");
    expect(MorseModel.getMorse('R'), ".-.");
    expect(MorseModel.getMorse('S'), "...");
    expect(MorseModel.getMorse('T'), "-");
    expect(MorseModel.getMorse('U'), "..-");
    expect(MorseModel.getMorse('V'), "...-");
    expect(MorseModel.getMorse('W'), ".--");
    expect(MorseModel.getMorse('X'), "-..-");
    expect(MorseModel.getMorse('Y'), "-.--");
    expect(MorseModel.getMorse('Z'), "--..");
    expect(MorseModel.getMorse('0'), "-----");
    expect(MorseModel.getMorse('1'), ".----");
    expect(MorseModel.getMorse('2'), "..---");
    expect(MorseModel.getMorse('3'), "...--");
    expect(MorseModel.getMorse('4'), "....-");
    expect(MorseModel.getMorse('5'), ".....");
    expect(MorseModel.getMorse('6'), "-....");
    expect(MorseModel.getMorse('7'), "--...");
    expect(MorseModel.getMorse('8'), "---..");
    expect(MorseModel.getMorse('9'), "----.");
    expect(MorseModel.getMorse('.'), ".-.-.-");
    expect(MorseModel.getMorse(' '), "/");
  });
  test(" :: An morse code is converted to alpha character correctly :: ", () {
    expect(MorseModel.getAlpha(".-"), "A");
    expect(MorseModel.getAlpha("-..."), "B");
    expect(MorseModel.getAlpha("-.-."), "C");
    expect(MorseModel.getAlpha("-.."), "D");
    expect(MorseModel.getAlpha("."), "E");
    expect(MorseModel.getAlpha("..-."), "F");
    expect(MorseModel.getAlpha("--."), "G");
    expect(MorseModel.getAlpha("...."), "H");
    expect(MorseModel.getAlpha(".."), "I");
    expect(MorseModel.getAlpha(".---"), "J");
    expect(MorseModel.getAlpha("-.-"), "K");
    expect(MorseModel.getAlpha(".-.."), "L");
    expect(MorseModel.getAlpha("--"), "M");
    expect(MorseModel.getAlpha("-."), "N");
    expect(MorseModel.getAlpha("---"), "O");
    expect(MorseModel.getAlpha(".--."), "P");
    expect(MorseModel.getAlpha("--.-"), "Q");
    expect(MorseModel.getAlpha(".-."), "R");
    expect(MorseModel.getAlpha("..."), "S");
    expect(MorseModel.getAlpha("-"), "T");
    expect(MorseModel.getAlpha("..-"), "U");
    expect(MorseModel.getAlpha("...-"), "V");
    expect(MorseModel.getAlpha(".--"), "W");
    expect(MorseModel.getAlpha("-..-"), "X");
    expect(MorseModel.getAlpha("-.--"), "Y");
    expect(MorseModel.getAlpha("--.."), "Z");
    expect(MorseModel.getAlpha("-----"), "0");
    expect(MorseModel.getAlpha(".----"), "1");
    expect(MorseModel.getAlpha("..---"), "2");
    expect(MorseModel.getAlpha("...--"), "3");
    expect(MorseModel.getAlpha("....-"), "4");
    expect(MorseModel.getAlpha("....."), "5");
    expect(MorseModel.getAlpha("-...."), "6");
    expect(MorseModel.getAlpha("--..."), "7");
    expect(MorseModel.getAlpha("---.."), "8");
    expect(MorseModel.getAlpha("----."), "9");
    expect(MorseModel.getAlpha(".-.-.-"), ".");
    expect(MorseModel.getAlpha("/"), " ");
  });

  test(" :: Alpha frase to morse :: ", () {
    expect(morseControl.toMorse("Meu nome"), "-- . ..- / -. --- -- . ");
  });
  test(" :: Morse to alpaha :: ", () {
    expect(morseControl.toAlpha("-- . ..- / -. --- -- . "), "MEU NOME");
  });
}
