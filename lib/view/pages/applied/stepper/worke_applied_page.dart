import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utilities/themes/apptheme.dart';
import '../../../widgets/text_widget.dart';

class TypeOfWorkAppliedJob extends StatefulWidget {
  const TypeOfWorkAppliedJob({Key? key}) : super(key: key);

  @override
  State<TypeOfWorkAppliedJob> createState() => _TypeOfWorkAppliedJobState();
}

class _TypeOfWorkAppliedJobState extends State<TypeOfWorkAppliedJob> {
  List<bool> radioValues = List<bool>.generate(4, (index) => false); // List of radio button values

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 2.h),
          TextWidget(
            textAlign: TextAlign.start,
            text: 'Type of work',
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
          SizedBox(height: 3.h),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 2.h,
              );
            },
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    radioValues = List<bool>.generate(4, (i) => i == index);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: radioValues[index]
                          ? AppTheme.primary500
                          : AppTheme.neutral300,
                    ),
                    color: radioValues[index]
                        ? AppTheme.primary100
                        : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              textAlign: TextAlign.start,
                              text: 'Senior UX Designer',
                              style: TextStyle(
                                fontFamily: 'SF',
                                overflow: TextOverflow.ellipsis,
                                color: AppTheme.neutral900,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            TextWidget(
                              textAlign: TextAlign.start,
                              text: 'CV.pdf . Portfolio.pdf',
                              style: TextStyle(
                                fontFamily: 'SF',
                                overflow: TextOverflow.ellipsis,
                                color: AppTheme.neutral700,
                                fontSize: 9.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Radio<bool>(
                        value: radioValues[index],
                        groupValue: true,
                        onChanged: (bool? value) {},
                        activeColor: AppTheme.primary500,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
