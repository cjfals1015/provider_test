import 'package:flutter/material.dart';

class FishModel with ChangeNotifier {
  final String name;
  int number;
  final String size;

  FishModel({
    required this.name,
    required this.number,
    required this.size,
  });

  // 물고기 수량 증가시키는 버튼
  void changeFishNumber() {
    number++;
    notifyListeners();
  }
}
