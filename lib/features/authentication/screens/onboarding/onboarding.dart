import 'package:flutter/material.dart';
import 'package:flutter_store_beginner/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_store_beginner/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_store_beginner/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_store_beginner/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_store_beginner/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_store_beginner/util/constants/image_strings.dart';
import 'package:flutter_store_beginner/util/constants/text_string.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: RImages.onBoardingImage1,
                title: RTexts.onBoardingTitle1,
                subTitle: RTexts.onBoardingSbuTitle1,
              ),
              OnBoardingPage(
                image: RImages.onBoardingImage2,
                title: RTexts.onBoardingTitle2,
                subTitle: RTexts.onBoardingSbuTitle2,
              ),
              OnBoardingPage(
                image: RImages.onBoardingImage3,
                title: RTexts.onBoardingTitle3,
                subTitle: RTexts.onBoardingSbuTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
