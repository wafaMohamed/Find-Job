import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/app_bar_with_text.dart';
import '../../../widgets/bold_text.dart';
import '../../../widgets/default_form_field.dart';
import '../../../widgets/grey_text.dart';
import '../../../widgets/main_button.dart';

class PhoneTwoStep extends StatefulWidget {
  const PhoneTwoStep({Key? key}) : super(key: key);

  @override
  State<PhoneTwoStep> createState() => _PhoneTwoStepState();
}

class _PhoneTwoStepState extends State<PhoneTwoStep> {
  final _passwordLoginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                const AppBarText(text: "Two-step verification"),
                SizedBox(
                  height: 4.h,
                ),
                const BoldTextWidget(text: "Add phone number"),
                SizedBox(
                  height: 1.h,
                ),
                GreyTextWidget(
                    text: "We will send a verification code to this number",
                    fontSize: 13.sp),
                SizedBox(
                  height: 3.h,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: AppTheme.neutral300),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10),
                    isDense: true,
                  ),
                  initialCountryCode: 'EG', //  Egypt as the initial country
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                SizedBox(
                  height: 3.h,
                ),
                const BoldTextWidget(text: "Enter your password"),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  // keyboardType: TextInputType.visiblePassword,
                  hint: 'Enter your password',
                  prefixIcon: Iconsax.lock,
                  suffixIcon: Iconsax.eye_slash,
                  obscureText: true,
                  controller: _passwordLoginController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 36.h,
                ),
                CustomMainButton(
                    onpressed: () {
                      Navigator.pushNamed(context, AppRoutes.otpRoute);
                    },
                    text: "Send Code")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
