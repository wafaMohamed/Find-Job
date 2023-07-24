import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/app_bar_with_text.dart';
import '../../../widgets/bold_text.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/grey_text.dart';
import '../../../widgets/main_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var verificationController = TextEditingController();
  var formedKeyVerification = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formedKeyVerification,
          child: Padding(
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
                  const BoldTextWidget(text: "Enter the 4 digit code"),
                  SizedBox(
                    height: 1.h,
                  ),
                  GreyTextWidget(
                      text:
                          "Please confirm your account by entering the authorization code sent to your number",
                      fontSize: 13.sp),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 9.h,
                        width: 20.w,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'not valid';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: const InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.titleLarge,
                          cursorColor: AppTheme.primary500,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                        width: 20.w,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'not valid';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin2) {},
                          decoration: const InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.titleLarge,
                          cursorColor: AppTheme.primary500,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                        width: 20.w,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'not valid';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin3) {},
                          decoration: const InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.titleLarge,
                          cursorColor: AppTheme.primary500,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                        width: 20.w,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'not valid';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin4) {},
                          decoration: const InputDecoration(hintText: "0"),
                          style: Theme.of(context).textTheme.titleLarge,
                          cursorColor: AppTheme.primary500,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding:  EdgeInsets.only(top: 1.8.h),
                        child: TextWidget(
                          text: 'did’t receive code.?!',
                          style: TextStyle(
                            fontFamily: 'SF',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.neutral900),
                        ),
                      ),
                      CustomText(
                        text: 'Resend code',
                        fontFamily: 'SF',
                        onpressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 39.h,
                  ),
                  CustomMainButton(
                      onpressed: () {
                        if (formedKeyVerification.currentState!.validate()) {}
                      },
                      text: "Verify")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
