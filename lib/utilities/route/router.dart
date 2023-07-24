import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import '../../view/layout/bottom_navigation_bar.dart';
import '../../view/pages/applied/stepper/stepper_applied.dart';
import '../../view/pages/auth/forget_password/check_email.dart';
import '../../view/pages/auth/forget_password/create_new_pass.dart';
import '../../view/pages/auth/forget_password/reset_password.dart';
import '../../view/pages/auth/forget_password/verification_succesfully.dart';
import '../../view/pages/auth/login/login_page.dart';
import '../../view/pages/auth/registr/account_setup.dart';
import '../../view/pages/auth/registr/interested_work.dart';
import '../../view/pages/auth/registr/location.dart';
import '../../view/pages/auth/registr/register_page.dart';
import '../../view/pages/home/job_details/apply_job/stepper_apply_job.dart';
import '../../view/pages/home/job_details/job_detail/job_details.dart';
import '../../view/pages/home/notification/notification_page.dart';
import '../../view/pages/home/recent_job_card.dart';
import '../../view/pages/home/search/filter_search.dart';
import '../../view/pages/home/search/search.dart';
import '../../view/pages/messages/archive_messages.dart';
import '../../view/pages/messages/chat/chat_page.dart';
import '../../view/pages/messages/spame_messages.dart';
import '../../view/pages/messages/unread_messages.dart';
import '../../view/pages/onboarding/onboarding_page.dart';
import '../../view/pages/profile/change_password_profile.dart';
import '../../view/pages/profile/complete_profile/complete_profile_page.dart';
import '../../view/pages/profile/complete_profile/education_page.dart';
import '../../view/pages/profile/complete_profile/experience_page.dart';
import '../../view/pages/profile/edite_profile_page.dart';
import '../../view/pages/profile/email_address_profile.dart';
import '../../view/pages/profile/help_center.dart';
import '../../view/pages/profile/language_page.dart';
import '../../view/pages/profile/login_and_security_page.dart';
import '../../view/pages/profile/notification_page.dart';
import '../../view/pages/profile/phone_num_profile.dart';
import '../../view/pages/profile/portofolio_page.dart';
import '../../view/pages/profile/privacy_policy_page.dart';
import '../../view/pages/profile/terms_conditions.dart';
import '../../view/pages/profile/two_step_verification/otp.dart';
import '../../view/pages/profile/two_step_verification/two_step_phone.dart';
import '../../view/pages/profile/two_step_verification/two_step_verification.dart';
import '../../view/pages/saved/saved_page.dart';
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
    case AppRoutes.jobDetailsRoute:
      return MaterialPageRoute(
          builder: (_) => const JobDetails(), settings: routeSettings);
    case AppRoutes.savedScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const SavedScreen(), settings: routeSettings);
    case AppRoutes.applyJobScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const ApplyJobScreen(), settings: routeSettings);
    case AppRoutes.interestedWorkRoute:
      return MaterialPageRoute(
          builder: (_) => InterestedWork(), settings: routeSettings);
    case AppRoutes.locationRoute:
      return MaterialPageRoute(
        builder: (_) => const Location(
          countryName: 'United States',
          image: 'path_to_image', // Provide the actual image path here
          isSelected: false,
        ),
        settings: routeSettings,
      );
    case AppRoutes.notificationScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const NotificationScreen(), settings: routeSettings);
    case AppRoutes.recentJobCardRoute:
      return MaterialPageRoute(
          builder: (_) => const RecentJobCard(), settings: routeSettings);
    case AppRoutes.filterSearchRoute:
      return MaterialPageRoute(
          builder: (_) => const FilterSearch(), settings: routeSettings);
    case AppRoutes.accountSetupRoute:
      return MaterialPageRoute(
          builder: (_) => const AccountSetup(), settings: routeSettings);
    case AppRoutes.searchScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const SearchScreen(), settings: routeSettings);
    case AppRoutes.bottomNavigationRoute:
      return MaterialPageRoute(
          builder: (_) => const BottomNavigation(), settings: routeSettings);
    case AppRoutes.restPasswordRoute:
      return MaterialPageRoute(
          builder: (_) => RestPassword(), settings: routeSettings);
    case AppRoutes.checkEmailRoute:
      return MaterialPageRoute(
          builder: (_) => const CheckEmail(), settings: routeSettings);
    case AppRoutes.archiveMessagesRoute:
      return MaterialPageRoute(
          builder: (_) => const ArchiveMessages(), settings: routeSettings);
    case AppRoutes.unReadMessagesRoute:
      return MaterialPageRoute(
          builder: (_) => const UnReadMessages(), settings: routeSettings);
    case AppRoutes.spamMessagesRoute:
      return MaterialPageRoute(
          builder: (_) => const SpamMessages(), settings: routeSettings);
    case AppRoutes.createNewPasswordRoute:
      return MaterialPageRoute(
          builder: (_) => const CreateNewPassword(), settings: routeSettings);
    case AppRoutes.chatScreenRoute:
      return MaterialPageRoute(
          builder: (_) => const ChatScreen(), settings: routeSettings);
    case AppRoutes.stepperAppliedJobRoute:
      return MaterialPageRoute(
          builder: (_) => const StepperAppliedJob(), settings: routeSettings);
    case AppRoutes.completeProfileRoute:
      return MaterialPageRoute(
          builder: (_) => const CompleteProfile(), settings: routeSettings);
    case AppRoutes.editeProfilePageRoute:
      return MaterialPageRoute(
          builder: (_) => const EditeProfilePage(), settings: routeSettings);
    case AppRoutes.passwordSuccessfullyRoute:
      return MaterialPageRoute(
          builder: (_) => const PasswordChangedSuccessfully(),
          settings: routeSettings);
    case AppRoutes.portfolioRoute:
      return MaterialPageRoute(
          builder: (_) => const PortfolioScreen(), settings: routeSettings);
    case AppRoutes.notificationProfileRoute:
      return MaterialPageRoute(
          builder: (_) => const NotificationProfileScreen(),
          settings: routeSettings);
    case AppRoutes.loginAndSecurityRoute:
      return MaterialPageRoute(
          builder: (_) => const LoginAndSecurityScreen(),
          settings: routeSettings);
    case AppRoutes.emailAddressProfileRoute:
      return MaterialPageRoute(
          builder: (_) => const EmailAddressProfile(), settings: routeSettings);
    case AppRoutes.experienceRoute:
      return MaterialPageRoute(
          builder: (_) => const ExperienceScreen(), settings: routeSettings);
    case AppRoutes.educationRoute:
      return MaterialPageRoute(
          builder: (_) => const EducationScreen(), settings: routeSettings);
    case AppRoutes.phoneNumberProfileRoute:
      return MaterialPageRoute(
          builder: (_) => const PhoneNumberProfile(), settings: routeSettings);
    case AppRoutes.changePasswordProfileRoute:
      return MaterialPageRoute(
          builder: (_) => const ChangePasswordProfile(),
          settings: routeSettings);
    case AppRoutes.twoStepVerificationRoute:
      return MaterialPageRoute(
          builder: (_) => const TwoStepVerification(), settings: routeSettings);
    case AppRoutes.helpCenterRoute:
      return MaterialPageRoute(
          builder: (_) => const HelpCenterScreen(), settings: routeSettings);
    case AppRoutes.termsConditionsRoute:
      return MaterialPageRoute(
          builder: (_) => const TermsConditionsScreen(),
          settings: routeSettings);
    case AppRoutes.privacyPolicyRoute:
      return MaterialPageRoute(
          builder: (_) => const PrivacyPolicyScreen(), settings: routeSettings);
    case AppRoutes.phoneTwoStepRoute:
      return MaterialPageRoute(
          builder: (_) => const PhoneTwoStep(), settings: routeSettings);
    case AppRoutes.otpRoute:
      return MaterialPageRoute(
          builder: (_) => const OtpScreen(), settings: routeSettings);
    case AppRoutes.languageRoute:
      return MaterialPageRoute(
          builder: (_) => LanguageScreen(), settings: routeSettings);

    case AppRoutes.loginRoute:
    default:
      return MaterialPageRoute(
          builder: (_) => const LoginScreen(), settings: routeSettings);
  }
}

/*       case AppRoutes.name :
    return MaterialPageRoute(
        builder: (_) => const screen(), settings: routeSettings);

          */
