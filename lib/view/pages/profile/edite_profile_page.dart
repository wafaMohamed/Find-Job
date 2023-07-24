import 'dart:io';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:path/path.dart' as path;
import 'package:sizer/sizer.dart';
import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/default_form_field.dart';
import '../../widgets/grey_text.dart';
import '../../widgets/main_button.dart';

class EditeProfilePage extends StatefulWidget {
  const EditeProfilePage({Key? key}) : super(key: key);

  @override
  State<EditeProfilePage> createState() => _EditeProfilePageState();
}

class _EditeProfilePageState extends State<EditeProfilePage> {
  final _name = TextEditingController();
  final _bio = TextEditingController();
  final _address = TextEditingController();

  // Define a variable to store the picked image
  XFile? _pickedImage;

  // Function pick image from the camera
  Future<void> _pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(source: ImageSource.camera);
    } catch (e) {
      print('Error picking image from camera: $e');
    }

    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
      });
    }
  }

  // Function to pick an image from the gallery
  Future<void> _pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      print('Error picking image from gallery: $e');
    }

    if (pickedImage != null) {
      setState(() {
        _pickedImage = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              children: [
                SizedBox(height: 2.h),
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: const AppBarText(text: 'Profile'),
                ),
                SizedBox(height: 2.h),

                /// photo
                GestureDetector(
                  onTap: () {
                    _showImagePickerAlert();
                  },
                  child: Container(
                    width: 18.h,
                    height: 18.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(
                        color: AppTheme.backgroundOnBoarding,
                        width: 4,
                      ),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(4, 4, 4, 0.4),
                          Color.fromRGBO(4, 4, 4, 0.4),
                        ],
                      ),
                      image: _pickedImage != null
                          ? DecorationImage(
                              image: FileImage(File(_pickedImage!.path)),
                              fit: BoxFit.cover,
                            )
                          : const DecorationImage(
                              image: AssetImage(AppAssets.wafaAsset),
                              fit: BoxFit.cover,
                            ),
                    ),
                    child: Center(
                      child: Icon(Iconsax.camera,
                          color: AppTheme.backgroundOnBoarding, size: 5.h),
                    ),
                  ),
                ),
                CustomText(
                  text: "Change Photo",
                  fontFamily: "SF",
                  onpressed: () {
                    _showImagePickerAlert();
                  },
                ),

                /// Name
                Padding(
                  padding: EdgeInsets.only(right: 37.h),
                  child: GreyTextWidget(
                    text: 'Name',
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                CustomTextField(
                  hint: 'Name',
                  controller: _name,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 3.h,
                ),

                /// Bio
                Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: GreyTextWidget(
                    text: 'Bio',
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                CustomTextField(
                  hint: 'Bio...',
                  controller: _bio,
                  keyboardType: TextInputType.multiline,
                ),
                SizedBox(
                  height: 3.h,
                ),

                /// Address
                Padding(
                  padding: EdgeInsets.only(right: 34.h),
                  child: GreyTextWidget(
                    text: 'Address',
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                CustomTextField(
                  hint: 'Address... ',
                  controller: _address,
                  keyboardType: TextInputType.multiline,
                ),

                /// phone number
                SizedBox(height: 3.h),
                Padding(
                  padding: EdgeInsets.only(right: 26.h),
                  child: GreyTextWidget(
                    text: 'No.Handphone',
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 1.5.h),
                IntlPhoneField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: AppTheme.neutral300),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10),
                    isDense: true,
                  ),
                  initialCountryCode: 'EG', //  Egypt as the initial country
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                SizedBox(
                  height: 3.h,
                ),

                /// Button
                SizedBox(
                  width: double.infinity,
                  child: CustomMainButton(
                    text: "Save",
                    onpressed: () {

                    },
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to show an alert for picking an image
  void _showImagePickerAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose an option'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pickImageFromCamera();
              },
              child: const Text('Camera'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pickImageFromGallery();
              },
              child: const Text('Gallery'),
            ),
          ],
        );
      },
    );
  }

  // Function to get the image path from the picked image
  String? _getPickedImagePath() {
    if (_pickedImage != null) {
      return path.basename(_pickedImage!.path);
    }
    return null;
  }
}
