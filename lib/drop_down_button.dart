import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  DropDownButtonDemo({super.key});

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List<String> languageList = ["English", "Urdu", "Pashto"];

  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: DropdownButton(
          items: languageList.map((language) {
            return DropdownMenuItem(
              child: Text(language),
              value: language,
            );
          }).toList(),
          value: selectedLanguage,
          isExpanded: true,
          hint: Text("Select Language"),
          onChanged: (val) {
            selectedLanguage = val;
            setState(() {});
          }),
    );
  }
}
