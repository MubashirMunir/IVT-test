import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testone/utils/strings.dart';

void showThreeTextFieldDialog(BuildContext context) {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Enter Details'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller1,
                decoration: const InputDecoration(
                  labelText: 'Enter Name ',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: controller2,
                decoration: const InputDecoration(
                  labelText: 'Account Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: controller3,
                decoration: const InputDecoration(
                  labelText: 'Id ',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppStrings.Cancel),
          ),
          ElevatedButton(
            onPressed: () {
              saveUserData(
                controller1.text.toString(),
                controller2.text,
                controller3.text,
              );
            },
            child: Text(AppStrings.submit),
          ),
        ],
      );
    },
  );
}

Future<void> saveUserData(String name, String age, String city) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> userDataList = prefs.getStringList("user_data") ?? [];

  // Create a JSON string for each entry
  Map<String, String> newUser = {
    "name": name,
    "age": age,
    "city": city,
  };

  userDataList.add(jsonEncode(newUser));
  await prefs.setStringList("user_data", userDataList);
}
