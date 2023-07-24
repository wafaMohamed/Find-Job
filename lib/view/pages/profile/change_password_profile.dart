import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/strings/app_strings.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/bold_text.dart';
import '../../widgets/default_form_field.dart';
import '../../widgets/main_button.dart';

class ChangePasswordProfile extends StatefulWidget {
  const ChangePasswordProfile({Key? key}) : super(key: key);

  @override
  State<ChangePasswordProfile> createState() => _ChangePasswordProfileState();
}

class _ChangePasswordProfileState extends State<ChangePasswordProfile> {
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  const AppBarText(text: "Change password"),
                  SizedBox(
                    height: 3.h,
                  ),
                  const BoldTextWidget(text: "Enter your old password"),
                  SizedBox(
                    height: 1.h,
                  ),

                  /// OLD PASS
                  CustomTextField(
                    hint: "Enter old Password...",
                    prefixIcon: Iconsax.lock,
                    suffixIcon: Iconsax.eye_slash,
                    obscureText: true,
                    controller: _oldPasswordController,
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
                  SizedBox(height: 3.h),
                  const BoldTextWidget(text: "Enter your new password"),
                  SizedBox(
                    height: 1.h,
                  ),

                  /// NEW PASS
                  CustomTextField(
                    hint: AppString.enterNewPassString,
                    prefixIcon: Iconsax.lock,
                    suffixIcon: Iconsax.eye_slash,
                    obscureText: true,
                    controller: _passwordController,
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
                  SizedBox(height: 3.h),
                  const BoldTextWidget(text: "Confirm your new password"),
                  SizedBox(
                    height: 1.h,
                  ),

                  /// CONFIRM PASS
                  CustomTextField(
                    hint: AppString.confirmPassString,
                    prefixIcon: Iconsax.lock,
                    suffixIcon: Iconsax.eye_slash,
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
                      return null;
                    },
                  ),
                  SizedBox(height: 25.h),
                  CustomMainButton(
                      onpressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      text: "Save")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
