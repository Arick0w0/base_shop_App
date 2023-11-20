import 'package:flutter/material.dart';
import 'package:flutter_store_beginner/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_store_beginner/util/constants/sizes.dart';
import 'package:flutter_store_beginner/util/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: RDeviceUtils.getAppBarHeight(),
      right: RSize.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text('Skip'),
      ),
    );
  }
}
