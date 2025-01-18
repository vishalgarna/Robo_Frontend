import 'package:flutter/material.dart';

class PairListNotifier extends ChangeNotifier {
  List<dynamic> _pairList = [];
  Map<dynamic, bool> _isSelected = {};

  List<dynamic> get pairList => _pairList;
  bool isSelected(dynamic pair) => _isSelected[pair] ?? false;

  void addPair(dynamic pair) {
    _pairList.add(pair);
    _isSelected[pair] = true;
    notifyListeners();
  }

  void removePair(dynamic pair) {
    _pairList.remove(pair);
    _isSelected[pair] = false;
    notifyListeners();
  }
}