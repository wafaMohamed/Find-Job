import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../../utilities/themes/apptheme.dart';
import '../../../../widgets/default_form_field.dart';
import '../../../../widgets/red_star_text_widget.dart';
import '../../../../widgets/text_widget.dart';

class BioDataScreen extends StatefulWidget {
  const BioDataScreen({Key? key}) : super(key: key);

  @override
  State<BioDataScreen> createState() => _BioDataScreenState();
}

class _BioDataScreenState extends State<BioDataScreen> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /// Head Line
          SizedBox(height: 2.h),
          TextWidget(
            textAlign: TextAlign.start,
            text: 'Biodata',
            style: TextStyle(
              fontFamily: 'SF',
              overflow: TextOverflow.ellipsis,
              color: AppTheme.neutral900,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 1.h),
          TextWidget(
            textAlign: TextAlign.start,
            text: 'Fill in your bio data correctly',
            style: TextStyle(
              fontFamily: 'SF',
              overflow: TextOverflow.ellipsis,
              color: AppTheme.neutral500,
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
          ),
          /// title form field 1
          SizedBox(height: 3.h),
          const TextStarWidget(text: 'Full Name',),
          SizedBox(height: 1.5.h),
          /// Text Form Field 1
          SizedBox(
            width: double.infinity,
            height: 9.h,
            child: CustomTextField(
              keyboardType: TextInputType.name,
              hint: 'Enter your full name',
              prefixIcon: Iconsax.user,
              controller: _fullNameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a full name';
                }
                return null;
              },
            ),
          ),
          /// title form field 2
          SizedBox(height: 3.h),
          const TextStarWidget(text: 'Email',),
          SizedBox(height: 1.5.h),
          /// Text Form Field 2
          SizedBox(
            width: double.infinity,
            height: 9.h,
            child:  CustomTextField(
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
          ),
          /// title form field 3
          SizedBox(height: 3.h),
          const TextStarWidget(text: 'No.HandPhone',),
          SizedBox(height: 1.5.h),
          /// Text Form Field 3
          IntlPhoneField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(color: AppTheme.neutral300),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10),
              isDense: true,
            ),
            initialCountryCode: 'EG', //  Egypt as the initial country
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ],
      ),
    );
  }
}
