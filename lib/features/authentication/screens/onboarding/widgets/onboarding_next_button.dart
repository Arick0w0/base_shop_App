import 'package:flutter/material.dart';
import 'package:flutter_store_beginner/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_store_beginner/util/constants/colors.dart';
import 'package:flutter_store_beginner/util/constants/sizes.dart';
import 'package:flutter_store_beginner/util/device/device_utility.dart';
import 'package:flutter_store_beginner/util/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Positioned(
      right: RSize.defaultSpace,
      bottom: RDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? RColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
