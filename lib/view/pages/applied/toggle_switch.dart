import 'package:find_job_amit/view/pages/applied/rejected_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../../../../utilities/themes/apptheme.dart';
import 'active_page.dart';

class ToggleSwitchApplied extends StatefulWidget {
  const ToggleSwitchApplied({Key? key}) : super(key: key);

  @override
  State<ToggleSwitchApplied> createState() => _ToggleSwitchAppliedState();
}

class _ToggleSwitchAppliedState extends State<ToggleSwitchApplied> {
  int selectedIndex = 0;

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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ToggleSwitch(
                      minWidth: 30.w,
                      minHeight: 4.h,
                      cornerRadius: 100,
                      activeBgColors: [
                        [Colors.blue[800]!],
                        [Colors.blue[800]!],
                      ],
                      activeFgColor: AppTheme.backgroundOnBoarding,
                      inactiveBgColor: AppTheme.neutral100,
                      inactiveFgColor: AppTheme.neutral500,
                      initialLabelIndex: selectedIndex,
                      totalSwitches: 2,
                      labels: const ['Active', 'Rejected'],
                      radiusStyle: true,
                      animate: true,
                      onToggle: (index) {
                        setIndex(index!);
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 1.h),
          if (selectedIndex == 0) const ActiveJobScreen(),
          if (selectedIndex == 1) const RejectedJobScreen(),
        ],
      ),
    );
  }
}
