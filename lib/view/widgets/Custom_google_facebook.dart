import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomGoogleFacebook extends StatelessWidget {
  const CustomGoogleFacebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      Image.asset(AppAssets.googleAsset,height: 46,width: 154),
      SizedBox(width: 5.w,),
      Image.asset(AppAssets.facebookAsset,height: 46,width: 154),

    ],);
  }
}
