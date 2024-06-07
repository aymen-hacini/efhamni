import 'package:flutter/material.dart';

/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.

class OnboardingModel {
  final BoxDecoration pagecolor;
  final String appbarText;
  final String bodyText;
  final String image;

  OnboardingModel( 
      {required this.appbarText,
      required this.bodyText,
      required this.pagecolor
      ,
      required this.image,});
}
