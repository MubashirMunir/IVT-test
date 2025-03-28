import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testone/Acoount_auth.dart/Auth_viewModel.dart';
import 'package:testone/Widgets/Text14p.dart';
import 'package:testone/Widgets/Text18.dart';
import 'package:testone/Widgets/Text19.dart';
import 'package:testone/Widgets/Text40.dart';
import 'package:testone/Widgets/bottomSheet.dart';
import 'package:testone/Widgets/custom_button.dart';
import 'package:testone/Widgets/customtextfield.dart';
import 'package:testone/Widgets/menu.dart';
import 'package:testone/Widgets/text16.dart';
import 'package:testone/Widgets/text20.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';
import 'package:testone/utils/strings.dart';
import 'package:testone/utils/toast_util.dart';

class AccountAuthScreen extends StatefulWidget {
  const AccountAuthScreen({super.key});

  @override
  State<AccountAuthScreen> createState() => _AccountAuthScreenState();
}

class _AccountAuthScreenState extends State<AccountAuthScreen> {
  String name = '';
  String accountName = '';
  String id = '';
  bool isLoading = true; // Track loading state

  @override
  void initState() {
    super.initState();
    _restartAnimation();
    _loadUserData();
  }

  Future<List<Map<String, String>>> _loadUserData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      List<String> dataList = prefs.getStringList('userDataList') ?? [];

      List<Map<String, String>> decodedList = dataList
          .map((item) => Map<String, String>.from(jsonDecode(item)))
          .toList();

      debugPrint("User data loaded successfully: $decodedList");
      return decodedList;
    } catch (e) {
      debugPrint("Error loading user data: $e");
      return [];
    }
  }

  late Key _progressKey;
  void _restartAnimation() {
    setState(() {
      _progressKey = UniqueKey(); // Creates a new key to restart animation
    });

    Future.delayed(const Duration(seconds: 30), () {
      _restartAnimation(); // Restart animation after 30 seconds
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelProvider = Provider.of<AccountAuthModel>(context);

    return Scaffold(
      drawer: const MenuScreen(),
      appBar: AppBar(
        actions: [
          Image.asset(
            'assets/images/in.png',
            height: SizeConfig.height26(),
            width: SizeConfig.width28(),
          ),
          SizedBox(width: SizeConfig.width15()),
          Image.asset(
            'assets/images/out.png',
            height: SizeConfig.height18(),
            width: SizeConfig.width20(),
          ),
          SizedBox(width: SizeConfig.width20()),
        ],
        centerTitle: true,
        title: Text19(
          title: AppStrings.AccountAuth,
          color: blackColor,
        ),
      ),
      body: id.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(height: SizeConfig.height60()),
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
                SizedBox(height: SizeConfig.height15()),
                Text20(title: AppStrings.AddYourFirstAccount),
                Text16(title: AppStrings.desc),
                SizedBox(height: SizeConfig.height10()),
                CustomButton(
                  onPressed: () async {
                    showBottomSheets(context);
                    var result =
                        await showBottomSheets(context); // 🚀 Call Bottom Sheet

                    if (result != null) {
                      debugPrint("Received Data: $result");
                      ToastUtil.showToast("User Name: ${result['name']}");
                    } else {
                      debugPrint("No data received.");
                    }
                  },
                )
              ],
            )
          : Column(
              children: [
                name.isNotEmpty
                    ? Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.borderRadius)),
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
                      )
                    : const SizedBox(),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              minVerticalPadding: 10,
                              visualDensity: VisualDensity(
                                  horizontal: 0,
                                  vertical: SizeConfig.height4()),
                              contentPadding: EdgeInsets.only(
                                left: SizeConfig.width15(),
                              ),
                              title: Row(
                                children: [
                                  SvgPicture.asset('assets/images/insta.svg'),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.width70(),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text18(title: name),
                                        SizedBox(
                                          width: SizeConfig.width100(),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/images/smallid.svg',
                                                color: Color(0xFF868686),
                                              ),
                                              SizedBox(
                                                width: SizeConfig.width4(),
                                              ),
                                              Text14s(
                                                title: accountName,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: SizeConfig.width40()),
                                    child: Text40(
                                      title: id,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Padding(
                                padding: EdgeInsets.only(
                                  right: SizeConfig.width30(),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.more_vert_sharp),
                                    TweenAnimationBuilder<double>(
                                        key: _progressKey,
                                        tween: Tween(begin: 0.0, end: 1.0),
                                        duration: const Duration(
                                            seconds: 30), // 30 seconds duration
                                        builder: (context, value, child) {
                                          return SizedBox(
                                            height: SizeConfig.height10(),
                                            width: SizeConfig.width10(),
                                            child: CircularProgressIndicator(
                                              color: const Color(0xFF0066FF),
                                              year2023: true,
                                              strokeCap: StrokeCap.butt,
                                              value: value,
                                              strokeWidth:
                                                  SizeConfig.borderRadius28,
                                              // valueColor:
                                              //     const AlwaysStoppedAnimation<
                                              //         Color>(Colors.blue),
                                            ),
                                          );
                                        }),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: const Color(0xFFE5E5E5),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
      bottomSheet: name.isEmpty
          ? const SizedBox()
          : CustomButton(
              onPressed: () {
                showBottomSheets(context);
              },
            ),
    );
  }
}
