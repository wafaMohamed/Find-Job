import 'package:find_job_amit/view/pages/applied/toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/app_bar_with_text.dart';

class AppliedScreen extends StatelessWidget {
  const AppliedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.h),
              child: const AppBarText(
                text: 'Applied Job',
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            const Expanded(
              child: ToggleSwitchApplied(),
            ),
            SizedBox(
              height: 2.h,
            )
          ],
        ),
      ),
    );
  }
}
