import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_file/open_file.dart';
import 'package:sizer/sizer.dart';
import '../../../../../utilities/themes/apptheme.dart';
import '../../../../widgets/red_star_text_widget.dart';
import '../../../../widgets/text_widget.dart';

class UploadPortfolioScreen extends StatefulWidget {
  const UploadPortfolioScreen({Key? key}) : super(key: key);

  @override
  State<UploadPortfolioScreen> createState() => _UploadPortfolioScreenState();
}

class _UploadPortfolioScreenState extends State<UploadPortfolioScreen> {
  List<PlatformFile> selectedFiles = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 2.h),
        TextWidget(
          textAlign: TextAlign.start,
          text: 'Upload portfolio',
          style: TextStyle(
            fontFamily: 'SF',
            overflow: TextOverflow.ellipsis,
            color: AppTheme.neutral900,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 1.h),
        TextWidget(
          textAlign: TextAlign.start,
          text: 'Fill in your bio data correctly',
          style: TextStyle(
            fontFamily: 'SF',
            overflow: TextOverflow.ellipsis,
            color: AppTheme.neutral500,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
          ),
        ),
        SizedBox(height: 3.h),

        ///  cv
        const TextStarWidget(
          text: 'Upload CV',
        ),
        SizedBox(height: 1.5.h),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 2.h,
            );
          },
          itemCount: selectedFiles.isNotEmpty ? selectedFiles.length : 1,
          itemBuilder: (BuildContext context, int index) {
            if (selectedFiles.isEmpty) {
              return const SizedBox();
            } else {
              PlatformFile file = selectedFiles[index];
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppTheme.neutral300, width: 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.pdfAsset,
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: file.name,
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
                          TextWidget(
                            text: "${file.size} KB",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: AppTheme.neutral500,
                              fontSize: 10.sp,
                              fontFamily: 'SF',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        //  edit operation
                        editFileName(index);
                      },
                      icon: const Icon(Iconsax.edit_2,
                          color: AppTheme.primary500),
                    ),
                    IconButton(
                      onPressed: () {
                        //  delete operation
                        removeFile(index);
                      },
                      icon: const Icon(Iconsax.close_circle,
                          color: AppTheme.danger500),
                    ),
                  ],
                ),
              );
            }
          },
        ),
        SizedBox(height: 3.h),
        TextWidget(
          textAlign: TextAlign.start,
          text: "Other File",
          style: TextStyle(
            fontFamily: 'SF',
            overflow: TextOverflow.ellipsis,
            color: AppTheme.neutral900,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 1.5.h),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DottedBorder(
            dashPattern: const [8, 3],
            borderType: BorderType.RRect,
            radius: const Radius.circular(8),
            color: AppTheme.primary500,
            strokeWidth: 1.5,
            child: Container(
              width: double.infinity,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppTheme.primary100,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppTheme.primary200,
                      ),
                      width: 20.w,
                      height: 10.h,
                      child: Icon(
                        Iconsax.document_upload5,
                        color: AppTheme.primary500,
                        size: 38.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextWidget(
                    text: 'Upload your other file',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "SF",
                      color: AppTheme.neutral900,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextWidget(
                    text: 'Max. file size 10 MB',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SF",
                      color: AppTheme.neutral500,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 75.w,
                    height: 6.h,
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          width: 1.sp,
                          color: AppTheme.primary500,
                        ),
                        backgroundColor: AppTheme.primary200,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () async {
                        FilePickerResult? result = await FilePicker.platform
                            .pickFiles(allowMultiple: true);
                        if (result == null) return;

                        setState(() {
                          selectedFiles
                              .addAll(result.files); // Add selected files
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Icon(
                              Iconsax.export_1,
                              color: AppTheme.primary500,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          TextWidget(
                            text: 'Add File',
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF",
                              color: AppTheme.primary500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void removeFile(int index) {
    setState(() {
      selectedFiles.removeAt(index); // Remove the selected file
    });
  }

  void editFileName(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController controller =
            TextEditingController(text: selectedFiles[index].name);
        return AlertDialog(
          title: const Text('Edit File Name'),
          content: TextField(controller: controller),
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppTheme.primary500),
                shape: MaterialStateProperty.all<OutlinedBorder?>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              onPressed: () {
                String newFileName = controller.text;
                setState(() {
                  selectedFiles[index] = PlatformFile(
                    name: newFileName,
                    size: selectedFiles[index].size,
                    path: selectedFiles[index].path,
                    bytes: selectedFiles[index].bytes,
                  );
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
