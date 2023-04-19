import 'package:find_job_amit/utilities/route/router.dart';
import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        tools: const [...DevicePreview.defaultTools],
        builder: (context) => const FindJob(),
      ),
    );

class FindJob extends StatelessWidget {
  const FindJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerate,
        // initialRoute = home:
        initialRoute: AppRoutes.splashPageRoute,
      );
    });
  }
}
