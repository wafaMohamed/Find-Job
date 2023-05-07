import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/Custom_google_facebook.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/default_form_field.dart';
import '../../../widgets/main_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKeyLogin = GlobalKey<FormState>();

  final _usernameLoginController = TextEditingController();

  final _passwordLoginController = TextEditingController();

  bool _isValidLogin = false;

  bool isChecked1 = false;

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
                  text: AppString.loginString,
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
                  text: AppString.pleasLoginString,
                  fontFamily: 'SF',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppTheme.neutral500,
                      fontSize: 12.sp),
                  onpressed: () {},
                ),
                SizedBox(
                  height: 2.h,
                ),
                Form(
                  key: _formKeyLogin,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextField(
                        keyboardType: TextInputType.name,
                        hint: 'Enter your username',
                        prefixIcon: Icons.person_outline_outlined,
                        /*Image.asset(AppAssets.logoAsset),*/
                        controller: _usernameLoginController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a username';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      CustomTextField(
                        // keyboardType: TextInputType.visiblePassword,
                        hint: 'Enter your password',
                        prefixIcon: Icons.lock_outline_rounded,
                        suffixIcon: _isValidLogin ? Icons.remove_red_eye : null,
                        obscureText: true,
                        controller: _passwordLoginController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters';
                          }
                          _isValidLogin = true;
                          return null;
                        },
                      ),
                       SizedBox(height: 1.h),
                      //Checkbox
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              value: isChecked1,
                              onChanged:  (value) {
                                setState(() =>
                                isChecked1 =
                                value!);
                              },),
                          CustomText(
                              text: AppString.rememberMeString,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppTheme.neutral800,
                              fontFamily: "SF",
                              onpressed: () {}),
                          SizedBox(width: 6.w),
                          CustomText(
                              text: AppString.forgetPassString,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                               color: AppTheme.primary500,
                              fontFamily: "SF",
                              onpressed: () {}),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      //Already have an account? Text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: AppString.doNotHaveAccountString,
                            fontFamily: 'SF',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppTheme.neutral400,
                                fontSize: 12.sp),
                            onpressed: () {},
                          ),
                          CustomText(
                            text: AppString.registerString,
                            fontFamily: 'SF',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppTheme.primary500,
                                fontSize: 12.sp),
                            onpressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      CustomMainButton(
                        onpressed: () {
                          if (_formKeyLogin.currentState!.validate()) {
                            // Perform sign-up action
                          }
                        },
                        text: 'Login',
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
                            text: AppString.orLoginString,
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
