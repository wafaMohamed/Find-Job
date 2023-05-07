import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import '../../view/pages/IntroScreen/onboarding_page.dart';
import '../../view/pages/auth/login/login_page.dart';
import '../../view/pages/auth/registr/account_setup.dart';
import '../../view/pages/auth/registr/interested_work.dart';
import '../../view/pages/auth/registr/location.dart';
import '../../view/pages/auth/registr/register_page.dart';
import '../../view/pages/splash_page.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.splashPageRoute:
      return MaterialPageRoute(
          builder: (_) => const SplashScreen(), settings: routeSettings);
    case AppRoutes.onBoardingRoute:
      return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(), settings: routeSettings);
    case AppRoutes.registerRoute:
      return MaterialPageRoute(
          builder: (_) => const RegisterScreen(), settings: routeSettings);
    case AppRoutes.interestedWorkRoute:
      return MaterialPageRoute(
          builder: (_) =>  InterestedWork(), settings: routeSettings);
    case AppRoutes.locationRoute:
      return MaterialPageRoute(
          builder: (_) => const Location(), settings: routeSettings);
    case AppRoutes.accountSetupRoute:
      return MaterialPageRoute(
          builder: (_) => const AccountSetup(), settings: routeSettings);
    case AppRoutes.loginRoute:
    default:
      return MaterialPageRoute(
          builder: (_) => LoginScreen(), settings: routeSettings);
  }
}
