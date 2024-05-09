import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _Fin1 = false;
  bool get Fin1 => _Fin1;
  set Fin1(bool value) {
    _Fin1 = value;
  }

  bool _Fine2 = false;
  bool get Fine2 => _Fine2;
  set Fine2(bool value) {
    _Fine2 = value;
  }

  bool _fin3 = false;
  bool get fin3 => _fin3;
  set fin3(bool value) {
    _fin3 = value;
  }

  bool _fin4 = false;
  bool get fin4 => _fin4;
  set fin4(bool value) {
    _fin4 = value;
  }

  bool _fin5 = false;
  bool get fin5 => _fin5;
  set fin5(bool value) {
    _fin5 = value;
  }

  bool _fin6 = false;
  bool get fin6 => _fin6;
  set fin6(bool value) {
    _fin6 = value;
  }

  bool _fin7 = false;
  bool get fin7 => _fin7;
  set fin7(bool value) {
    _fin7 = value;
  }

  bool _fin8 = false;
  bool get fin8 => _fin8;
  set fin8(bool value) {
    _fin8 = value;
  }

  bool _hunt1 = false;
  bool get hunt1 => _hunt1;
  set hunt1(bool value) {
    _hunt1 = value;
  }

  bool _hunt2 = false;
  bool get hunt2 => _hunt2;
  set hunt2(bool value) {
    _hunt2 = value;
  }
}
