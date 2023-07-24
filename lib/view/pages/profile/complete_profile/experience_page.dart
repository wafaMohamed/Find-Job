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

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  final _position = TextEditingController();
  final _typeOfWork = TextEditingController();
  final _companyName = TextEditingController();
  final _location = TextEditingController();
  final _startYear = TextEditingController();
  bool isChecked1 = false;

  List<Map<String, String>> experienceList = [];

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
                  text: 'Experience',
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
                        /// Position
                        Padding(
                          padding: EdgeInsets.only(right: 25.h),
                          child: GreyTextWidget(
                            text: 'Position *',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'Position Name...',
                          controller: _position,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),

                        /// Type of work
                        Padding(
                          padding: EdgeInsets.only(right: 22.h),
                          child: GreyTextWidget(
                            text: 'Type of work',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'Type of work... ',
                          controller: _typeOfWork,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),

                        /// Company name
                        Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: GreyTextWidget(
                            text: 'Company name *',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'Company...',
                          controller: _companyName,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),

                        /// Location
                        Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: GreyTextWidget(
                            text: 'Location',
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        CustomTextField(
                          hint: 'Cairo,Egypt',
                          controller: _location,
                          prefixIcon: Iconsax.location,
                          keyboardType: TextInputType.text,
                        ),

                        ///Checkbox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              value: isChecked1,
                              onChanged: (value) {
                                setState(() => isChecked1 = value!);
                              },
                            ),
                            TextWidget(
                              text: "I am currently working in this role",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp,
                                color: AppTheme.neutral900,
                                fontFamily: "SF",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
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
                          hint: '2000',
                          controller: _startYear,
                          suffixIcon: Iconsax.calendar_1,
                          keyboardType: TextInputType.datetime,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),

                        /// Button
                        CustomMainButton(
                          text: "Save",
                          onpressed: _saveExperience,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
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
                    itemCount: experienceList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var experience = experienceList[index];
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
                                  AppAssets.facebookLogoAsset,
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
                                    /// Position
                                    TextWidget(
                                      text: experience['position'] ?? '',
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

                                    /// Type work + company name
                                    TextWidget(
                                      text:
                                          '${experience['typeOfWork']!}.${experience['companyName']!}',
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
                                      padding: EdgeInsets.only(right: 21.h),
                                      child: GreyTextWidget(
                                          text: '${experience['startYear']}',
                                          fontSize: 10.sp),
                                    )
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () => _editExperience(index),
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
  void _saveExperience() {
    // Get values from text controllers
    final position = _position.text;
    final typeOfWork = _typeOfWork.text;
    final companyName = _companyName.text;
    final startYear = _startYear.text;

    // Check if any required field is empty
    if (position.isEmpty ||
        companyName.isEmpty ||
        typeOfWork.isEmpty ||
        startYear.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please fill all Information',
          ),
          backgroundColor: AppTheme.danger500,
        ),
      );
    } else {
      // Add the experience data as a map to the list
      setState(() {
        experienceList.add({
          'position': position,
          'typeOfWork': typeOfWork,
          'companyName': companyName,
          'startYear': startYear,
        });
      });

      // Clear the text fields after saving
      _position.clear();
      _typeOfWork.clear();
      _companyName.clear();
      _startYear.clear();
    }
  }

  /// Edit Function
  void _editExperience(int index) async {
    final TextEditingController editPositionController =
        TextEditingController(text: experienceList[index]['position']);
    final TextEditingController editTypeOfWorkController =
        TextEditingController(text: experienceList[index]['typeOfWork']);
    final TextEditingController editCompanyNameController =
        TextEditingController(text: experienceList[index]['companyName']);
    final TextEditingController editStartYearController =
        TextEditingController(text: experienceList[index]['startYear']);

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Experience'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: editPositionController,
                decoration: const InputDecoration(hintText: 'Edit Position'),
              ),
              TextField(
                controller: editTypeOfWorkController,
                decoration: const InputDecoration(hintText: 'Edit Type Work'),
              ),
              TextField(
                controller: editCompanyNameController,
                decoration: const InputDecoration(hintText: 'Company Name'),
              ),
              TextField(
                controller: editStartYearController,
                decoration: const InputDecoration(hintText: 'Start Year'),
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
                  'position': editPositionController.text,
                  'typeOfWork': editTypeOfWorkController.text,
                  'companyName': editCompanyNameController.text,
                  'startYear': editStartYearController.text,
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
          experienceList[index]['position'] = editedData['position'];
          experienceList[index]['typeOfWork'] = editedData['typeOfWork'];
          experienceList[index]['companyName'] = editedData['companyName'];
          experienceList[index]['startYear'] = editedData['startYear'];
        });
      }
    });
  }
}
