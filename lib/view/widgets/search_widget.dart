import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 14, 26, 10),
        width: double.infinity,
        height: 7.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppTheme.neutral300,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Icon(
              Iconsax.search_normal_1,
              color: AppTheme.neutral900,
              size: 3.h,
            ),
            SizedBox(
              width: 3.w,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: text,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: AppTheme.neutral400,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
