import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';
import 'bold_text.dart';
import 'grey_text.dart';

class CompleteWidget extends StatelessWidget {
  const CompleteWidget(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.subTitle})
      : super(key: key);
  final String text;
  final String subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.w,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppTheme.primary300, width: 1),
        color: AppTheme.primary100,
      ),
      child: ListTile(
        onTap: onPressed,
        leading:
            Icon(Icons.check_circle, size: 5.h, color: AppTheme.primary500),
        title: BoldTextWidget(
          text: text,
        ),
        subtitle: GreyTextWidget(
          text: subTitle,
          fontSize: 9.sp,
        ),
        trailing: const Icon(Iconsax.arrow_right_1),
      ),
    );
  }
}

// grey container

/*              Container(
                width: 86.w,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.neutral300, width: 1),
                ),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(Icons.check_circle,
                      size: 5.h, color: AppTheme.neutral400),
                  title: const BoldTextWidget(
                    text: 'Experience',
                  ),
                  subtitle: GreyTextWidget(
                    text:
                        'Enter your work experience to be considered by the recruiter',
                    fontSize: 9.sp,
                  ),
                  trailing: const Icon(Iconsax.arrow_right_1),
                ),
              ),
*/
