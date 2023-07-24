import 'package:find_job_amit/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import 'custom_google_facebook.dart';
import 'custom_appbar.dart';
import '../../../widgets/default_form_field.dart';
import '../../../widgets/main_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isValid = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding0,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBarRegister(),
                //createAccount Text
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppString.createAccountString1,
                  fontFamily: 'SF',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppTheme.neutral900,
                      fontSize: 20.sp),
                  onpressed: () {},
                ),
                //Subtitle createAccount Text
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppString.createAccountString2,
                  fontFamily: 'SF',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppTheme.neutral500,
                      fontSize: 10.50.sp),
                  onpressed: () {},
                ),
                SizedBox(
                  height: 2.h,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextField(
                        keyboardType: TextInputType.name,
                        hint: 'Enter your username',
                        prefixIcon: Iconsax.user,
                        /*Image.asset(AppAssets.logoAsset),*/
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a username';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      CustomTextField(
                        hint: 'Enter your email',
                        prefixIcon: Iconsax.sms,
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an email';
                          }
                          if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      CustomTextField(
                        // keyboardType: TextInputType.visiblePassword,
                        hint: 'Enter your password',
                        prefixIcon: Iconsax.lock,
                        suffixIcon:Iconsax.eye_slash,
                        obscureText: true,
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters';
                          }
                          _isValid = true;
                          return null;
                        },
                      ),
                      SizedBox(height: 4.h),
                      //Already have an account? Text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: AppString.loginQusString,
                            fontFamily: 'SF',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppTheme.neutral400,
                                fontSize: 12.sp),
                            onpressed: () {},
                          ),
                          CustomText(
                            text: AppString.loginString,
                            fontFamily: 'SF',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppTheme.primary500,
                                fontSize: 12.sp),
                            onpressed: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.loginRoute);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      CustomMainButton(
                        onpressed: () {
                          if (_formKey.currentState!.validate()) {
                            return setState(() {
                              Navigator.of(context).pushNamed(AppRoutes.interestedWorkRoute);
                            });
                            // Perform sign-up action
                          }
                        },
                        text: 'Create account',
                      ),
                      SizedBox(height: 1.h),
                      //Divider orSignUpWith
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: AppTheme.neutral300,
                            width: 17.w,
                            height: 1,
                          ),
                          SizedBox(width: 2.w),
                          CustomText(
                            text: AppString.orSignUpString,
                            fontFamily: "SF",
                            color: AppTheme.neutral500,
                            onpressed: () {},
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            color: AppTheme.neutral300,
                            width: 17.w,
                            height: 1,
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      // Google and Facebook Button
                      const CustomGoogleFacebook(),
                      SizedBox(
                        height: 3.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
