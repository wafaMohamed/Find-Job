import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utilities/assets/app_assets.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image.asset(AppAssets.boarding1Asset,fit: BoxFit.cover,),
        ]);
  }
}
