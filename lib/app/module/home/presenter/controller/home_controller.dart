import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  PageController pageController = PageController();

  navigationRegister(int page) {
    pageController.jumpToPage(page);

    notifyListeners(); // faz um setState
  }

  TextEditingController numberController = TextEditingController();

  showClickedNumber(int number) {
    numberController.text = number.toString();
    notifyListeners();
  }
}
