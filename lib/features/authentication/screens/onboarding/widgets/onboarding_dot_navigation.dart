import 'package:flutter/material.dart';
import 'package:flutter_store_beginner/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_store_beginner/util/constants/colors.dart';
import 'package:flutter_store_beginner/util/constants/sizes.dart';
import 'package:flutter_store_beginner/util/device/device_utility.dart';
import 'package:flutter_store_beginner/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = RHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: RDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: RSize.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? RColors.light : RColors.dark, dotHeight: 6),
      ),
    );
  }
}
