import 'package:efhamnidz/presentation/auth/widgets/auth.dart';
import 'package:efhamnidz/presentation/game_screen/gamescreen.dart';
import 'package:efhamnidz/presentation/home/home.dart';
import 'package:efhamnidz/presentation/profile_page/profile_page.dart';
import 'package:get/get.dart';
import '../presentation/onboarding_one_screen/onboarding.dart';
import '../presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import '../presentation/auth/register_screen/register_screen.dart';
import '../presentation/auth/register_screen/binding/register_binding.dart';
import '../presentation/auth/login_screen/login_screen.dart';
import '../presentation/auth/login_screen/binding/login_binding.dart';
import '../presentation/profile_container_screen/profile_container_screen.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/text_to_sign_screen/text_to_sign_screen.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/sign_to_text_screen/sign_to_text_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String registerScreen = '/register_screen';

  static const String authScreen = '/auth';
  static const String homeScreen = '/home';
  static const String gameScreen = '/game';

  static const String loginScreen = '/login_screen';

  static const String profilePage = '/profile_page';

  static const String profileContainerScreen = '/profile_container_screen';

  static const String settingsScreen = '/settings_screen';

  static const String textToSignScreen = '/text_to_sign_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String splashScreen = '/splash_screen';

  static const String signToTextScreen = '/sign_to_text_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(name: authScreen, page: () => Auth()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: profilePage, page: () => ProfilePage()),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: profileContainerScreen,
      page: () => ProfileContainerScreen(),
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
    ),
    GetPage(
      name: textToSignScreen,
      page: () => TextToSignScreen(),
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signToTextScreen,
      page: () => SignToTextScreen(),
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: gameScreen,
      page: () => GameScreen(),
    ),
  ];
}
