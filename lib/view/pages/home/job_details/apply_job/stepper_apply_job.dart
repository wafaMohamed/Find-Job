import 'package:find_job_amit/view/pages/home/job_details/apply_job/type_work_page.dart';
import 'package:find_job_amit/view/pages/home/job_details/apply_job/upload_portfolio_page.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:find_job_amit/view/widgets/main_button.dart';
import '../../../../../utilities/themes/apptheme.dart';
import '../../../../widgets/app_bar_with_text.dart';
import '../../../../widgets/text_widget.dart';
import 'biodata_page.dart';

class ApplyJobScreen extends StatefulWidget {
  const ApplyJobScreen({Key? key}) : super(key: key);

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> {
  int currentStep = 0;
  List<bool> stepCompletionStatus = [
    false,
    false,
    false
  ]; // Track completion on each step

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarText(text: 'Apply Job'),
              SizedBox(height: 3.h),
              Row(
                children: [
                  buildStepItem(0, 'Bio data'),
                  buildLineDash(0),
                  buildStepItem(1, 'Type work'),
                  buildLineDash(1),
                  buildStepItem(2, 'portfolio'),
                ],
              ),
              SizedBox(height: 3.h),
              Form(
                key: _formKey,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Visibility(
                      visible: true,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: buildStepContent(currentStep),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              CustomMainButton(
                text: currentStep < 2 ? 'Next' : 'Submit',
                onpressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (currentStep < 2) {
                      setState(() {
                        currentStep++;
                        stepCompletionStatus[currentStep - 1] = true;
                      });
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStepItem(int step, String title) {
    final isActive = currentStep == step;
    final isCompleted = stepCompletionStatus[step];
    final containerColor = isActive
        ? AppTheme.backgroundOnBoarding
        : AppTheme.backgroundOnBoarding;
    final edgeColor = isActive ? AppTheme.primary500 : AppTheme.neutral400;
    final textColor = isActive ? AppTheme.primary500 : AppTheme.neutral400;
    const completedIconColor = AppTheme.backgroundOnBoarding;
    final completedIconSize = 4.h;

    return Expanded(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              if (!isCompleted) {
                setState(() {
                  currentStep = step;
                });
              }
            },
            child: FittedBox(
              fit: BoxFit.fill,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 50, height: 60),
                    // Set exact width and height
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: containerColor,
                      border: Border.all(
                        width: 1,
                        color: edgeColor,
                      ),
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                  if (isCompleted)
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.primary500,
                      ),
                      child: Icon(
                        Icons.check,
                        color: completedIconColor,
                        size: completedIconSize,
                      ),
                    ),
                  if (!isCompleted)
                    Center(
                      child: Text(
                        (step + 1).toString(),
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontFamily: 'SF',
                          color: textColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.contain,
            child: TextWidget(
              text: title,
              style: TextStyle(
                fontFamily: "SF",
                color: isCompleted
                    ? AppTheme.primary500
                    : (isActive ? AppTheme.primary500 : AppTheme.neutral900),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLineDash(int step) {
    final isCompleted = stepCompletionStatus[step];
    final dashColor = isCompleted ? AppTheme.primary500 : AppTheme.neutral400;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.h),
        child: Dash(
          direction: Axis.horizontal,
          length: 50,
          dashLength: 8,
          dashColor: dashColor,
        ),
      ),
    );
  }

  Widget buildStepContent(int step) {
    switch (step) {
      case 0:
        // put your content screen
        return const BioDataScreen();
      case 1:
        return const TypeOfWorkScreen();
      case 2:
        return const UploadPortfolioScreen();
      default:
        return Container();
    }
  }
}
