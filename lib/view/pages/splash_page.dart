import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'onboarding/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override

  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: AssetImage(AppAssets.splashAsset),
              fit: BoxFit.contain,
            ),
            Image(
              image: AssetImage(AppAssets.logoAsset),
            ),


          ],
        ),
      ),
    );
  }
}
