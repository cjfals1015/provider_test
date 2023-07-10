import 'package:flutter/material.dart';

class SeaFishModel with ChangeNotifier {
  final String name;
  int tunaNumber;
  final String size;

  SeaFishModel({
    required this.name,
    required this.tunaNumber,
    required this.size,
  });

  // 물고기 수량 증가시키는 버튼
  void changeSeaFishNumber() {
    tunaNumber++;
    notifyListeners();
  }
}
