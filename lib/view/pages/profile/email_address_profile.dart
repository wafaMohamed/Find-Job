import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/bold_text.dart';
import '../../widgets/default_form_field.dart';
import '../../widgets/main_button.dart';

class EmailAddressProfile extends StatefulWidget {
  const EmailAddressProfile({Key? key}) : super(key: key);

  @override
  State<EmailAddressProfile> createState() => _EmailAddressProfileState();
}

class _EmailAddressProfileState extends State<EmailAddressProfile> {
  final _emailController = TextEditingController();

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
                const AppBarText(text: "Email Address"),
                SizedBox(
                  height: 4.h,
                ),
                const BoldTextWidget(text: "Main e-mail address"),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextField(
                  hint: 'wafamohameddd@gmail.com',
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
                SizedBox(
                  height: 58.h,
                ),
                CustomMainButton(onpressed: () {}, text: "Save")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
