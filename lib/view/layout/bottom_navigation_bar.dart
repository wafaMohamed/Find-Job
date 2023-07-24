import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:find_job_amit/view/pages/messages/messages_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utilities/themes/apptheme.dart';
import '../pages/applied/applied_page.dart';
import '../pages/home/home_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/saved/saved_page.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  static final List<Widget> screensBottom = <Widget>[
    const HomeScreen(),
    const MessagesScreen(),
    const AppliedScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensBottom[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: AppTheme.primary500,
        // Set the selected item color to blue
        unselectedItemColor: AppTheme.neutral400,
        // Set the unselected item color
        backgroundColor: AppTheme.backgroundOnBoarding0,
        currentIndex: currentIndex,
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items:  [
          BottomNavigationBarItem(
            label: 'Home',
             activeIcon:Image.asset(AppAssets.homeAsset),
            icon: const Icon(Iconsax.home),
            backgroundColor: AppTheme.backgroundOnBoarding,
          ),
          BottomNavigationBarItem(
            label: 'Messages',
            activeIcon:Image.asset(AppAssets.messageAsset),
            icon: const Icon(Iconsax.message),
            backgroundColor: AppTheme.backgroundOnBoarding,
          ),
          BottomNavigationBarItem(
            activeIcon:Image.asset(AppAssets.briefcaseBlueAsset),
            label: 'Applied',
            icon: const Icon(Iconsax.briefcase),
            backgroundColor: AppTheme.backgroundOnBoarding,
          ),
          BottomNavigationBarItem(
            activeIcon:Image.asset(AppAssets.archiveBlueAsset),
            label: 'Saved',
            icon: const Icon(Iconsax.archive_minus),
            backgroundColor: AppTheme.backgroundOnBoarding,
          ),
          BottomNavigationBarItem(
            activeIcon:Image.asset(AppAssets.profileBlueAsset),
            label: 'Profile',
            icon: Image.asset(AppAssets.profileAsset),
            backgroundColor: AppTheme.backgroundOnBoarding,
          ),
        ],
      ),
    );
  }
}
