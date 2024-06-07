import 'package:efhamnidz/core/app_export.dart';
import 'package:efhamnidz/presentation/onboarding_one_screen/controller/onboarding_one_controller.dart';
import 'package:efhamnidz/presentation/onboarding_one_screen/controller/onboardinglist.dart';

import 'package:flutter/material.dart';

class DotsController extends StatelessWidget {
  const DotsController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingOneControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardingList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 900),
                            curve: Curves.bounceInOut,
                            width: controller.currentpage == index ? 30 : 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: controller.currentpage == index
                                    ? Colors.grey[700]
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ))
              ],
            ));
  }
}
