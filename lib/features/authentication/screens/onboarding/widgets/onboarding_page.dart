import 'package:flutter/material.dart';
import 'package:flutter_store_beginner/util/constants/sizes.dart';
import 'package:flutter_store_beginner/util/helpers/helper_functions.dart';
import 'package:gap/gap.dart';

class OnBoardingPage extends StatelessWidget {
  final String image, title, subTitle;
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(RSize.defaultSpace),
      child: Column(
        children: [
          Image(
            width: RHelperFunctions.screenWidth() * 0.8,
            height: RHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(RSize.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
