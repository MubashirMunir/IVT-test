import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testone/Acoount_auth.dart/Auth_viewModel.dart';
import 'package:testone/Widgets/Text19.dart';
import 'package:testone/Widgets/custom_button.dart';
import 'package:testone/Widgets/customtextfield.dart';
import 'package:testone/Widgets/menu.dart';
import 'package:testone/Widgets/text16.dart';
import 'package:testone/Widgets/text20.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';
import 'package:testone/utils/strings.dart';

class AccountAuthScreen extends StatefulWidget {
  const AccountAuthScreen({super.key});

  @override
  State<AccountAuthScreen> createState() => _AccountAuthScreenState();
}

class _AccountAuthScreenState extends State<AccountAuthScreen> {
  Future<List<Map<String, String>>> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> userDataList = prefs.getStringList("user_data") ?? [];

    return userDataList
        .map((data) => Map<String, String>.from(jsonDecode(data)))
        .toList();
  }

  List<Map<String, String>> userList = [];

  void loadUserData() async {
    List<Map<String, String>> users = await getUserData();
    setState(() {
      userList = users;
    });
  }

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Widget build(BuildContext context) {
    bool click = false;

    final modelProvider = Provider.of<AccountAuthModel>(context);

    return Scaffold(
      drawer: MenuScreen(),
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/images/in.png',
            height: SizeConfig.height26(),
            width: SizeConfig.width28(),
          ),
          SizedBox(
            width: SizeConfig.width15(),
          ),
          Image.asset(
            'assets/images/out.png',
            height: SizeConfig.height18(),
            width: SizeConfig.width20(),
          ),
          SizedBox(
            width: SizeConfig.width20(),
          ),
        ],
        centerTitle: true,
        title: Text19(
          title: AppStrings.AccountAuth,
          color: blackColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(SizeConfig.borderRadius)),
                      height: SizeConfig.height45(),
                      width: SizeConfig.width358(),
                      child: CustomTextField(
                        click: () {},
                        hintText: AppStrings.Search,
                        iconClik: () {},
                        validateError: '',
                        lengthError: '',
                        controller: TextEditingController(),
                        type: TextInputType.name,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.height60(),
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/qr.png',
                      width: SizeConfig.width237(),
                      height: SizeConfig.height190(),
                    ),
                    Positioned(
                        top: SizeConfig.height100(),
                        left: SizeConfig.width100(),
                        child: SvgPicture.asset('assets/images/profileadd.svg'))
                  ],
                ),
                SizedBox(
                  height: SizeConfig.height20(),
                ),
                Text20(title: AppStrings.AddYourFirstAccount),
                Text16(title: AppStrings.desc),
                SizedBox(
                  height: SizeConfig.height60(),
                ),
                const CustomButton()
              ],
            )
          ],
        ),
      ),
      // bottomSheet: const CustomButton(),
    );
  }
}
