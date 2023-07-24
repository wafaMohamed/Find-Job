import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import 'package:share_plus/share_plus.dart';
import '../../../utilities/route/routes.dart';
import '../../widgets/container_bottomsheet_widget.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({Key? key}) : super(key: key);

  @override
  State<MoreOptions> createState() => _MoreOptionsState();
}

class _MoreOptionsState extends State<MoreOptions> {

  void shareContent() async {
    try {
      await Share.share('Check out this awesome content!');
    } catch (e) {
      print('Error sharing content: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'Apply Job',
                    onpressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.jobDetailsRoute);
                    },
                    icon: Iconsax.directbox_notif,
                  ),
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'Share via...',
                    onpressed: shareContent,
                    icon: Iconsax.export_1,
                  ),
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'Cancel save',
                    onpressed: () {},
                    icon: Iconsax.archive_minus,
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            );
          },
        );
      },
      child: const Icon(Iconsax.more),
    );
  }
}
