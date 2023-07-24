import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:find_job_amit/view/widgets/app_bar_with_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/language_widget.dart';

class LanguageScreen extends StatefulWidget {
  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int _selectedLanguage = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                const AppBarText(text: "Language"),
                SizedBox(
                  height: 2.h,
                ),
                LanguageWidget(text: 'English',
                  value: 1,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.englandAsset,),
                LanguageWidget(text: 'Indonesia',
                  value: 2,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.indonesiaLanAsset,),
                LanguageWidget(text: 'Arabic',
                  value: 3,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.arabiaAsset,),
                LanguageWidget(text: 'Chinese',
                  value: 4,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.chinaLanAsset,),
                LanguageWidget(text: 'Dutch',
                  value: 5,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.netherlandsAsset,),
                LanguageWidget(text: 'French',
                  value: 6,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.franceAsset,),
                LanguageWidget(text: 'German',
                  value: 7,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.germanyAsset,),
                LanguageWidget(text: 'Japanese',
                  value: 8,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.japanAsset,),
                LanguageWidget(text: 'Portuguese',
                  value: 9,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.portugalAsset,),
                LanguageWidget(text: 'Korean',
                  value: 10,
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value!;
                    });
                  },
                  imageAsset: AppAssets.koreaAsset,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
