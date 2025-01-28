import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  String _name = "";

  ///Setter
  void setName(String name) {
    _name = name;
    notifyListeners();
  }

  ///Getter
  String get getName => _name;
}
