import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:testone/Acoount_auth.dart/Auth_view.dart';
import 'package:testone/Acoount_auth.dart/Auth_viewModel.dart';
import 'package:testone/config/size_config.dart';
import 'package:testone/utils/colors.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AccountAuthModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    _initializeRequirements();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return ScreenUtilInit(
        // designSize: kIsWeb ? Size(1440, 1024) : Size(390, 629),
        minTextAdapt: true,
        ensureScreenSize: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              color: Colors.white,
              debugShowCheckedModeBanner: false,
              title: 'Time ',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
              ),
              home: AccountAuthScreen());
        });
  }

  void _initializeRequirements() {
    Future.delayed(const Duration(seconds: 1), () {
      SizeConfig.init(context);
      setState(() {});
    });
  }
}
