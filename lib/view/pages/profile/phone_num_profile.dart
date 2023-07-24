import 'package:find_job_amit/view/widgets/bold_text.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/grey_text.dart';
import '../../widgets/main_button.dart';
import '../../widgets/toggle_button.dart';

class PhoneNumberProfile extends StatefulWidget {
  const PhoneNumberProfile({Key? key}) : super(key: key);

  @override
  State<PhoneNumberProfile> createState() => _PhoneNumberProfileState();
}

class _PhoneNumberProfileState extends State<PhoneNumberProfile> {
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
                const AppBarText(text: "Phone number"),
                SizedBox(
                  height: 4.h,
                ),
                const BoldTextWidget(text: "Main phone number"),
                SizedBox(
                  height: 1.h,
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
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 14, 26, 10),
                  width: double.infinity,
                  height: 10.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppTheme.neutral300,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      GreyTextWidget(
                          text: "Use phone number to reset password",
                          fontSize: 10.sp),
                      SizedBox(
                        width: 7.w,
                      ),
                      const ToggleButtonCustom(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45.h,
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
