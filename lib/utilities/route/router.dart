import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import '../../view/pages/IntroScreen/onboarding_page.dart';
import '../../view/pages/splash_page.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings){

  switch(routeSettings.name){
    case AppRoutes.splashPageRoute:
      return MaterialPageRoute(builder: (_)=>const SplashScreen(),
      settings:  routeSettings
      );
    case AppRoutes.onBoardingRoute:
    default:return MaterialPageRoute(builder: (_)=>
      const OnBoardingScreen(),
      settings: routeSettings
      );


  }

}