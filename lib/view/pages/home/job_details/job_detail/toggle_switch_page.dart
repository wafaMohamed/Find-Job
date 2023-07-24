import 'package:find_job_amit/view/pages/home/job_details/job_detail/people_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../../../../utilities/themes/apptheme.dart';
import 'company_page.dart';
import 'description_page.dart';

class ToggleSwitchScreen extends StatefulWidget {
  const ToggleSwitchScreen({Key? key}) : super(key: key);

  @override
  State<ToggleSwitchScreen> createState() => _ToggleSwitchScreenState();
}

class _ToggleSwitchScreenState extends State<ToggleSwitchScreen> {
  int selectedIndex = 1;

  void setIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: FittedBox(
                 fit: BoxFit.fitWidth,
                  child: ToggleSwitch(
                    minWidth: 32.w,
                    minHeight: 6.h,
                    cornerRadius: 100,
                    activeBgColors: [
                      [Colors.blue[800]!],
                      [Colors.blue[800]!],
                      [Colors.blue[800]!],
                    ],
                    activeFgColor: AppTheme.backgroundOnBoarding,
                    inactiveBgColor: AppTheme.neutral100,
                    inactiveFgColor: AppTheme.neutral500,
                    initialLabelIndex: selectedIndex,
                    totalSwitches: 3,
                    labels: const ['Description', 'Company', 'People'],
                    radiusStyle: true,
                    animate: true,
                    onToggle: (index) {
                      setIndex(index!);
                    },
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 3.h),
          if (selectedIndex == 0) const DescriptionIndex(),
          if (selectedIndex == 1) const CompanyIndex(),
          if (selectedIndex == 2) const PeopleIndex(),
        ],
      ),
    );
  }
}
