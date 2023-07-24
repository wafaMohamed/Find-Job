import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../../../data_layer/model/location_model.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/main_button.dart';

class Location extends StatefulWidget {
  const Location({Key? key, required String countryName, required String image, required bool isSelected}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool isPressed = false;
  bool isRemote=false;
  int select=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding0,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 2.h),
                CustomText(
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    text: AppString.wherePreferredLocationString,
                    style: const TextStyle(
                        color: AppTheme.neutral900,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                    fontFamily: "SF",
                    onpressed: () {}),
                CustomText(
                  maxLines: 2,
                  style: TextStyle(
                      color: AppTheme.neutral500,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                  text: AppString.letUsKnowString,
                  fontFamily: 'SF',
                  onpressed: () {},
                ),
                SizedBox(height: 1.h),
                /// Toggle Switch
                ToggleSwitch(
                  minWidth: 160.0,
                  cornerRadius: 100,
                  animate: true,
                  activeBgColors: [[Colors.blue[800]!], [Colors.blue[800]!]],
                  activeFgColor: AppTheme.backgroundOnBoarding,
                  inactiveBgColor: AppTheme.neutral100,
                  inactiveFgColor: AppTheme.neutral500,
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: ['Work From Office', 'Remote Work'],
                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                SizedBox(height: 1.h),
                /// Text Select The Country String
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: CustomText(
                    maxLines: 2,
                    style: TextStyle(
                        color: AppTheme.neutral500,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                    text: AppString.selectTheCountryString,
                    fontFamily: 'SF',
                    onpressed: () {},
                  ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height*.5,
                  padding: const EdgeInsets.all(12.0),
                  child: GridView.builder(
                      shrinkWrap: true,

                      //physics: const NeverScrollableScrollPhysics(),
                      itemCount: LocationClass.locationList.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (1 / .4),
                        //crossAxisSpacing: 4.h,
                        mainAxisSpacing: .010.w,


                      ),

                      itemBuilder: (context,index)
                      {
                        return Column(
                          children: [
                            InkWell(
                              onTap: ()
                              {
                                setState(() {

                                  LocationClass.locationList[index].isSelected=!LocationClass.locationList[index].isSelected;
                                  if(LocationClass.locationList[index].isSelected==true)
                                  {
                                    select++;
                                    print(select);
                                    isPressed=true;

                                  }

                                  //isPressed=!isPressed;
                                  // print("done");
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    alignment: Alignment.topLeft,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius:BorderRadius.circular(100),
                                      color: LocationClass.locationList[index].isSelected? const Color(0xFfD6E4FF):  Colors.white,
                                      border: Border.all
                                        (color: LocationClass.locationList[index].isSelected?  Color(0xFf3366FF): const Color(0xFfD1D5DB)),

                                    ),
                                    child: Align(alignment: Alignment.topLeft,
                                      child:
                                      SelectLocationCountry(LocationClass.locationList[index]),

                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ],
                        );
                      }
                  ),
                ),

                CustomMainButton(
                    onpressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.accountSetupRoute);
                    },
                    text: "Next"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



