import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utilities/themes/apptheme.dart';
import '../../../../widgets/text_widget.dart';


class DescriptionIndex extends StatelessWidget {
  const DescriptionIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextWidget(
              textAlign: TextAlign.start,
              text: 'Job Description',
              style: TextStyle(
                fontFamily: 'SF',
                overflow: TextOverflow.ellipsis,
                color: AppTheme.neutral900,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          TextWidget(
            textAlign: TextAlign.start,
            text:
            'Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.',
            maxLines: 30,
            style: TextStyle(
              fontFamily: 'SF',
              overflow: TextOverflow.ellipsis,
              color: AppTheme.neutral700,
              fontSize: 9.sp,
            ),
          ),
          SizedBox(height: 3.h,),
          Align(
            alignment: Alignment.topLeft,
            child: TextWidget(
              textAlign: TextAlign.start,
              text: 'Job Description',
              style: TextStyle(
                fontFamily: 'SF',
                overflow: TextOverflow.ellipsis,
                color: AppTheme.neutral900,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          TextWidget(
            textAlign: TextAlign.start,
            text:'A strong visual portfolio with clear understanding of UI methodologies Ability to create hi-fidelity mock-ups in Figma Ability to create various graphics for the web e.g. illustrations and icons Able to facilitate workshops and liaise with stakeholders Proficiency in the Adobe Creative Suite Confident communicator with an analytical mindset Design library/Design system experience 4+ years of commercial experience in UI/Visual Design',
            maxLines: 30,
            style: TextStyle(
              fontFamily: 'SF',
              overflow: TextOverflow.ellipsis,
              color: AppTheme.neutral700,
              fontSize: 9.sp,
            ),
          ),

        ],
      ),
    );
  }
}