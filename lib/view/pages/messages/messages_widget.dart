import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/text_widget.dart';
import 'image_notification_widget.dart';

class MessagesWidget extends StatelessWidget {
  const MessagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(color: AppTheme.neutral200, height: 1.h);
      },
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){Navigator.pushNamed(context, AppRoutes.chatScreenRoute);},
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  leading: const ImageNotificationWidget(),
                  title: TextWidget(
                    text: 'Twitter',
                    style: TextStyle(
                      fontFamily: 'SF',
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14.sp,
                      color: AppTheme.neutral900,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: TextWidget(
                    text:
                    'Here is the link: http://zoom.com/abcdeefg ',
                    style: TextStyle(
                      fontFamily: 'SF',
                      overflow: TextOverflow.ellipsis,
                      color: AppTheme.neutral700,
                      fontSize: 9.sp,
                    ),
                  ),

                  trailing:  TextWidget(
                    text:
                    '12.39',
                    style: TextStyle(
                      fontFamily: 'SF',
                      overflow: TextOverflow.ellipsis,
                      color: AppTheme.primary500,
                      fontSize: 9.sp,
                    ),
                  ),
                )
              ]),
        );
      },
    );
  }
}
