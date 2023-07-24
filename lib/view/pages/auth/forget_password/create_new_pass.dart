import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../registr/custom_appbar.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/default_form_field.dart';
import '../../../widgets/main_button.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final _formKeyNewPass = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
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
                //create new pass Text
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    textAlign: TextAlign.start,
                    text: AppString.createNewPasswordString,
                    fontFamily: 'SF',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppTheme.neutral900,
                      fontSize: 20.sp,
                    ),
                    onpressed: () {},
                  ),
                ),
                //Subtitle rest pass Text
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppString.setNewPasswordString,
                  maxLines: 3,
                  fontFamily: 'SF',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppTheme.neutral500,
                    fontSize: 11.sp,
                  ),
                  onpressed: () {},
                ),
                SizedBox(
                  height: 5.h,
                ),
                Form(
                  key: _formKeyNewPass,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      /// NEW PASS
                      CustomTextField(
                        hint: AppString.enterNewPassString,
                        prefixIcon:Iconsax.lock,
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
                      /// CONFIRM PASS
                      CustomTextField(
                        hint: AppString.confirmPassString,
                        prefixIcon: Iconsax.lock,
                        suffixIcon:Iconsax.eye_slash,
                        obscureText: true,
                        controller: _confirmPasswordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters';
                          }
                          if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          _isValid = true;
                          return null;
                        },
                      ),
                      SizedBox(height: 28.h),
                      CustomMainButton(
                        onpressed: () {
                          if (_formKeyNewPass.currentState!.validate()) {
                            return setState(() {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.passwordSuccessfullyRoute);
                            });
                          }
                        },
                        text: AppString.resetNewPasswordString,
                      ),
                      SizedBox(height: 1.h),
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
