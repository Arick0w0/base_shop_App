import 'package:flutter/material.dart';
import 'package:flutter_store_beginner/features/authentication/screens/onboarding/ondoarding.dart';
import 'package:flutter_store_beginner/util/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
