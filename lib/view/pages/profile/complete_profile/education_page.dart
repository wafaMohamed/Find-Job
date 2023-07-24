import 'package:find_job_amit/view/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/app_bar_with_text.dart';
import '../../../widgets/default_form_field.dart';
import '../../../widgets/grey_text.dart';
import '../../../widgets/text_widget.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  final _university = TextEditingController();
  final _startYear = TextEditingController();
  final _endYear = TextEditingController();
  final _title = TextEditingController();
  List<Map<String, String>> educationList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
                const AppBarText(
                  text: 'Education',
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: 85.w,
                  padding: const EdgeInsets.fromLTRB(12, 12, 16, 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppTheme.neutral300, width: 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// university
                        Padding(
                          padding: EdgeInsets.only(right: 22.h),
                          child: GreyTextWidget(
                            text: 'University *',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'Name Of University',
                          controller: _university,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),

                        /// Title
                        Padding(
                          padding: EdgeInsets.only(right: 30.h),
                          child: GreyTextWidget(
                            text: 'Title',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'Bachelor ',
                          controller: _title,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),

                        /// Start Year
                        Padding(
                          padding: EdgeInsets.only(right: 25.h),
                          child: GreyTextWidget(
                            text: 'Start Year',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'December 2019',
                          controller: _startYear,
                          suffixIcon: Iconsax.calendar_1,
                          keyboardType: TextInputType.datetime,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),

                        /// End Year
                        Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: GreyTextWidget(
                            text: 'End Year',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'December 2023',
                          controller: _endYear,
                          suffixIcon: Iconsax.calendar_1,
                          keyboardType: TextInputType.datetime,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),

                        /// Button
                        CustomMainButton(
                          text: "Save",
                          onpressed: _saveEducation,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),

                /// Information container
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 2.h,
                      );
                    },
                    itemCount: educationList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var education = educationList[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: AppTheme.neutral300, width: 1),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(44),

                                /// photo
                                child: Image.asset(
                                  AppAssets.collegeAsset,
                                  width: 5.h,
                                  height: 5.h,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /// university
                                    TextWidget(
                                      text: education['university'] ?? '',
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: AppTheme.neutral900,
                                        fontSize: 12.sp,
                                        fontFamily: 'SF',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                    /// Bachelor
                                    TextWidget(
                                      text: education['title'] ?? '',
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: AppTheme.neutral500,
                                        fontSize: 11.sp,
                                        fontFamily: 'SF',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                    /// Date
                                    Padding(
                                      padding: EdgeInsets.only(right: 15.h),
                                      child: GreyTextWidget(
                                          text:
                                              '${education['startYear']!}-${education['endYear']!}',
                                          fontSize: 10.sp),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () => _editEducation(index),
                                icon: const Icon(Iconsax.edit_2,
                                    color: AppTheme.primary500),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Save Info
  void _saveEducation() {
    // Get values from text controllers
    final university = _university.text;
    final startYear = _startYear.text;
    final endYear = _endYear.text;
    final title = _title.text;

    // Check if any required field is empty
    if (university.isEmpty ||
        startYear.isEmpty ||
        endYear.isEmpty ||
        title.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please fill all Information',
          ),
          backgroundColor: AppTheme.danger500,
        ),
      );
    } else {
      // Add the education data as a map to the list
      setState(() {
        educationList.add({
          'university': university,
          'startYear': startYear,
          'endYear': endYear,
          'title': title,
        });
      });

      // Clear the text fields after saving
      _university.clear();
      _startYear.clear();
      _endYear.clear();
      _title.clear();
    }
  }

  /// Edit Function
  void _editEducation(int index) async {
    final TextEditingController editUniversityController =
        TextEditingController(text: educationList[index]['university']);
    final TextEditingController editStartYearController =
        TextEditingController(text: educationList[index]['startYear']);
    final TextEditingController editEndYearController =
        TextEditingController(text: educationList[index]['endYear']);
    final TextEditingController editTitleController =
        TextEditingController(text: educationList[index]['title']);

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Education'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: editUniversityController,
                decoration:
                    const InputDecoration(hintText: 'Name Of University'),
              ),
              TextField(
                controller: editStartYearController,
                decoration: const InputDecoration(hintText: 'Start Year'),
              ),
              TextField(
                controller: editEndYearController,
                decoration: const InputDecoration(hintText: 'End Year'),
              ),
              TextField(
                controller: editTitleController,
                decoration: const InputDecoration(hintText: 'Title'),
              ),
            ],
          ),
          actions: [
            /// cancel
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),

            /// save
            TextButton(
              onPressed: () {
                Navigator.pop(context, {
                  'university': editUniversityController.text,
                  'startYear': editStartYearController.text,
                  'endYear': editEndYearController.text,
                  'title': editTitleController.text,
                });
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    ).then((editedData) {
      if (editedData != null) {
        setState(() {
          educationList[index]['university'] = editedData['university'];
          educationList[index]['startYear'] = editedData['startYear'];
          educationList[index]['endYear'] = editedData['endYear'];
          educationList[index]['title'] = editedData['title'];
        });
      }
    });
  }
}
