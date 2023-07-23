import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class ExmpProvider with ChangeNotifier{
  int _counter = 1;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}