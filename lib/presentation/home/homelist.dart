
import 'package:efhamnidz/presentation/profile_page/profile_page.dart';
import 'package:efhamnidz/presentation/settings_screen/settings_screen.dart';
import 'package:efhamnidz/presentation/sign_to_text_screen/sign_to_text_screen.dart';
import 'package:efhamnidz/presentation/text_to_sign_screen/text_to_sign_screen.dart';
import 'package:flutter/material.dart';

List<Widget> homeScreensList = [
  TextToSignScreen(),
  SignToTextScreen(),
  ProfilePage(),
  SettingsScreen()
];
