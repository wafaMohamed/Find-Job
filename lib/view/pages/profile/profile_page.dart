import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:find_job_amit/utilities/themes/apptheme.dart';
import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/back_button_widget.dart';
import '../../widgets/container_profile.dart';
import '../../widgets/gray_bar_widget.dart';
import '../../widgets/list_tile_profile.dart';
import '../../widgets/list_tile_profile_other.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double profileHeight = 144;
  final double profileWidth = 144;
  bool isEditing = false;
  TextEditingController aboutController = TextEditingController();

  @override
  void initState() {
    super.initState();
    aboutController.text =
        'I am wafa mohamed, I’m flutter mobile application developer, I have experience in a mobile application development for approximately 1 year. I am currently joining the company studio team based in cairo, Egypt.I am a person who has a high spirit and likes to work to achieve what I dream of.';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              buildCoverImage(),
              Positioned(
                top: 15.h,
                child: buildProfileImage(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    const Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: BackButtonWidget(),
                      ),
                    ),
                    const Spacer(),
                    TextWidget(
                      text: 'Profile',
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "SF",
                          color: AppTheme.neutral900),
                    ),
                    const Spacer(),
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Image.asset(
                        AppAssets.logoutAsset,
                      )),
                    )),
                  ],
                ),
              ),
              Column(
                children: [
                  Column(children: [
                    SizedBox(
                      height: 36.h,
                    ),
                  ]),
                  TextWidget(
                    text: 'Wafa Mohamed Ahmed',
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SF",
                        color: AppTheme.neutral900),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextWidget(
                    text: 'Flutter Mobile Developer',
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "SF",
                        color: AppTheme.neutral500),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  const ContainerProfile(
                    text: 'Applied',
                    text1: '46',
                    text2: 'Reviewed',
                    text3: '46',
                    text4: 'Contacted',
                    text5: '16',
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35, left: 35),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'About',
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: "SF",
                              color: AppTheme.neutral500),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isEditing = !isEditing;
                            });
                          },
                          child: TextWidget(
                            text: isEditing ? 'Save' : 'Edit',
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: "SF",
                                color: isEditing
                                    ? AppTheme.primary500
                                    : AppTheme.neutral500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 33, left: 35),
                    child: isEditing
                        ? TextFormField(
                            controller: aboutController,
                            maxLines: 2,
                            onChanged: (value) {},
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF",
                              color: AppTheme.neutral500,
                            ),
                          )
                        : TextWidget(
                            maxLines: 20,
                            text: aboutController.text,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF",
                              color: AppTheme.neutral500,
                            ),
                          ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  const GrayBarWidget(
                    text: 'General',
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTileGeneral(
                    image: AppAssets.editProfileAsset,
                    text: 'Edit Profile',
                    onpressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.editeProfilePageRoute);
                    },
                  ),
                  ListTileGeneral(
                    image: AppAssets.portfolioAsset,
                    text: 'Portfolio',
                    onpressed: () {
                      Navigator.pushNamed(context, AppRoutes.portfolioRoute);
                    },
                  ),
                  ListTileGeneral(
                    image: AppAssets.languageAsset,
                    text: 'Language',
                    onpressed: () {
                      Navigator.pushNamed(context, AppRoutes.languageRoute);
                    },
                  ),
                  ListTileGeneral(
                    image: AppAssets.notificationProfileAsset,
                    text: 'Notification',
                    onpressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.notificationProfileRoute);
                    },
                  ),
                  ListTileGeneral(
                    image: AppAssets.loginAndSecurityAsset,
                    text: 'Login and security',
                    onpressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.loginAndSecurityRoute);
                    },
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  const GrayBarWidget(
                    text: 'Other',
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTileOther(
                    text: 'Accessibility',
                    onpressed: () {},
                  ),
                  ListTileOther(
                    text: 'Help Center',
                    onpressed: () {
                      Navigator.pushNamed(context, AppRoutes.helpCenterRoute);
                    },
                  ),
                  ListTileOther(
                    text: 'Terms & Conditions',
                    onpressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.termsConditionsRoute);
                    },
                  ),
                  ListTileOther(
                    text: 'Privacy Policy',
                    onpressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.privacyPolicyRoute);
                    },
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCoverImage() => Expanded(
        child: Container(
          color: AppTheme.primary100,
          child: Image.asset(
            AppAssets.backgroundProfileAsset,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ),
      );

  Widget buildProfileImage() => InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.completeProfileRoute);
        },
        child: Container(
          height: profileHeight,
          width: profileWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppTheme.backgroundOnBoarding0,
              width: 4.0,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(profileHeight / 2),
            child: Image.asset(
              AppAssets.wafaAsset,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}
