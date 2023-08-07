import 'package:flutter/material.dart';

/// Dashboard Provider
/// This provider is used manage the home page with bottom navigation bar
class DashboardProvider extends ChangeNotifier {
  ///Page index
  int _pageIndex = 0;

  ///Page index
  int get pageIndex => _pageIndex;
  set pageIndex(int pageIndex) {
    _pageIndex = pageIndex;
    notifyListeners();
  }

  ///Page controller
  PageController pageController = PageController();

  ///Change the page as per index
  void changePage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
    );
  }
}
