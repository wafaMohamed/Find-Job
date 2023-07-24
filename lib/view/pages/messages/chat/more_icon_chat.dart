import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../widgets/container_bottomsheet_widget.dart';

class MoreChatIcon extends StatefulWidget {
  const MoreChatIcon({Key? key}) : super(key: key);

  @override
  State<MoreChatIcon> createState() => _MoreChatIconState();
}

class _MoreChatIconState extends State<MoreChatIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          isScrollControlled: true ,
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
                    text: 'Visit job post',
                    onpressed: () {},
                    icon: Iconsax.briefcase,
                  ),
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'View my application',
                    onpressed: () {},
                    icon: Iconsax.note_21,
                  ),
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'Mark as unread',
                    onpressed: () {},
                    icon: Iconsax.sms,
                  ),
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'Mute',
                    onpressed: () {},
                    icon: Iconsax.notification,
                  ),
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'Archive',
                    onpressed: () {},
                    icon: Iconsax.import_1,
                  ),
                  SizedBox(height: 2.h),
                  ContainerBottomSheetWidget(
                    text: 'Delete conversation',
                    onpressed: () {},
                    icon: Iconsax.trash,
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
