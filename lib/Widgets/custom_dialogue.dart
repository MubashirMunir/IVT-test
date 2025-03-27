import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testone/utils/strings.dart';

void showThreeTextFieldDialog(BuildContext context) {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController accountController = TextEditingController();
  final TextEditingController idController = TextEditingController();

  showDialog(
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
            onPressed: () => Navigator.pop(context),
            child: Text(AppStrings.Cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              if (nameController.text.isEmpty ||
                  accountController.text.isEmpty ||
                  idController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("All fields are required!")),
                );
                return;
              }

              await saveUserData(
                nameController.text,
                accountController.text,
                idController.text,
              );

              // Clear fields after saving
              nameController.clear();
              accountController.clear();
              idController.clear();

              Navigator.pop(context);
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

Future<void> saveUserData(String name, String account, String id) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", name);
    await prefs.setString("account", account);
    await prefs.setString("id", id);
    debugPrint("User data saved successfully");
  } catch (e) {
    debugPrint("Error saving user data: $e");
  }
}
