import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/themes/apptheme.dart';

class ListTileGeneral extends StatelessWidget {
  const ListTileGeneral({Key? key, required this.onpressed, required this.text, required this.image})
      : super(key: key);
  final VoidCallback onpressed;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListTile(
          onTap: onpressed,
          leading:  Image(
            image: AssetImage(image),
          ),
          title: TextWidget(
              text: text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppTheme.neutral900,
                fontFamily: 'SF',
                fontSize: 13.sp
              )),
          trailing: const Icon(
            Icons.arrow_forward,
            color:  AppTheme.neutral900,
          ),
        ),
      ),
      Divider(
        height: 3.h,
        indent: 30,
        endIndent: 30,
      ),
    ]);
  }
}
