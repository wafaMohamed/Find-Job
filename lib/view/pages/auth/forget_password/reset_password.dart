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

class RestPassword extends StatefulWidget {
  RestPassword({Key? key}) : super(key: key);

  @override
  State<RestPassword> createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  final _formKeyPass = GlobalKey<FormState>();

  final _emailController = TextEditingController();

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
                //rest pass Text
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    textAlign: TextAlign.start,
                    text: AppString.resetPasswordString,
                    fontFamily: 'SF',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppTheme.neutral900,
                        fontSize: 20.sp),
                    onpressed: () {},
                  ),
                ),
                //Subtitle rest pass Text
                CustomText(
                  textAlign: TextAlign.start,
                  text: AppString.enterEmailAddressString,
                  maxLines: 3,
                  fontFamily: 'SF',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppTheme.neutral500,
                      fontSize: 11.sp),
                  onpressed: () {},
                ),
                SizedBox(
                  height: 5.h,
                ),
                Form(
                  key: _formKeyPass,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomTextField(
                        hint: AppString.enterYourEmailString,
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
                      SizedBox(height: 30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: AppString.rememberPasswordString,
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
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      CustomMainButton(
                        onpressed: () {
                          if (_formKeyPass.currentState!.validate()) {
                            return setState(() {
                              Navigator.of(context).pushNamed(AppRoutes.checkEmailRoute);
                            });
                          }
                        },
                        text: AppString.requestPasswordResetString,
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
