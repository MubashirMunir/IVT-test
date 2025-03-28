import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testone/utils/strings.dart';

Future<Map<String, String>?> showThreeTextFieldDialog(
    BuildContext context) async {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController accountController = TextEditingController();
  final TextEditingController idController = TextEditingController();

  return await showDialog<Map<String, String>>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Enter Details'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTextField(nameController, 'Enter Name'),
              const SizedBox(height: 16),
              _buildTextField(accountController, 'Account Name'),
              const SizedBox(height: 16),
              _buildTextField(idController, 'ID'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // Return null if canceled
            child: Text(AppStrings.Cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              if (nameController.text.isNotEmpty &&
                  accountController.text.isNotEmpty &&
                  idController.text.isNotEmpty) {
                Map<String, String> newUser = {
                  "name": nameController.text,
                  "account": accountController.text,
                  "id": idController.text,
                };

                await _saveUserData(newUser); // Save data
                if (context.mounted) {
                  Navigator.pop(context, newUser); // Return newUser map
                }
              }
            },
            child: Text(AppStrings.submit),
          ),
        ],
      );
    },
  );
}

// Helper function to create text fields
Widget _buildTextField(TextEditingController controller, String label) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
  );
}

// Save data to SharedPreferences
Future<void> _saveUserData(Map<String, String> newUser) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    List<String> dataList = prefs.getStringList('userDataList') ?? [];
    dataList.add(jsonEncode(newUser)); // Store as JSON string
    // await prefs.setStringList('userDataList', dataList);
    // debugPrint("User data saved successfully: $dataList");
  } catch (e) {
    debugPrint("Error saving user data: $e");
  }
}
