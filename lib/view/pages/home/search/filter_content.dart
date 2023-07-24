import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/app_bar_filter.dart';
import '../../../widgets/bold_text.dart';
import '../../../widgets/default_form_field.dart';
import '../../../widgets/main_button.dart';

class FilterContent extends StatefulWidget {
  const FilterContent({Key? key}) : super(key: key);

  @override
  State<FilterContent> createState() => _FilterContentState();
}

class _FilterContentState extends State<FilterContent> {
  final _jobTitleController = TextEditingController();
  final _locationController = TextEditingController();
  final _salaryController = TextEditingController();
  final List<String> _jobTypes = [
    'Full Time',
    'Remote',
    'Contract',
    'Internship',
    'Onsite',
    'Part Time',
  ];
  final List<int> _selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 2.h),
        AppBarFilter(
          text: 'Set Filter',
          onPressed: () {},
        ),
        SizedBox(height: 2.h),
        const BoldTextWidget(text: 'Job Tittle'),
        SizedBox(height: 2.h),
        CustomTextField(
          keyboardType: TextInputType.name,
          hint: 'Job Title',
          prefixIcon: Iconsax.briefcase,
          controller: _jobTitleController,
        ),
        SizedBox(height: 2.h),
        const BoldTextWidget(text: 'Location'),
        SizedBox(height: 2.h),
        CustomTextField(
          keyboardType: TextInputType.text,
          hint: 'Cairo, Egypt',
          prefixIcon: Iconsax.location,
          controller: _locationController,
        ),
        SizedBox(height: 2.h),
        const BoldTextWidget(text: 'Salary'),
        SizedBox(height: 2.h),
        CustomTextField(
          keyboardType: TextInputType.number,
          hint: "\$5k - \$10k",
          prefixIcon: Iconsax.dollar_circle,
          controller: _salaryController,
        ),
        SizedBox(height: 2.h),
        const BoldTextWidget(text: 'Job Types'),
        SizedBox(height: 2.h),
        ChipList(
          listOfChipNames: _jobTypes,
          supportsMultiSelect: true,
          style: TextStyle(
              fontWeight: FontWeight.w400, fontFamily: 'SF', fontSize: 12.sp),
          inactiveBgColorList: const [AppTheme.backgroundOnBoarding],
          activeBgColorList: const [AppTheme.primary100],
          activeTextColorList: const [AppTheme.primary500],
          activeBorderColorList: const [AppTheme.primary500],
          inactiveBorderColorList: const [AppTheme.neutral500],
          inactiveTextColorList: const [AppTheme.neutral500],
          listOfChipIndicesCurrentlySeclected:_selectedIndex,
        ),
        SizedBox(height: 4.h),
        SizedBox(
          width: double.infinity,
          child: CustomMainButton(onpressed: () {}, text: 'Show result'),
        )
      ],
    );
  }
}
