import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/back_button_widget.dart';
import '../../../widgets/gray_bar_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap:(){
                Navigator.pushNamed(context, AppRoutes.filterSearchRoute);
                },
                  child: Row(
                    children: [
                      const Expanded(flex: 1, child: BackButtonWidget()),
                      SizedBox(
                        width: 2.w,
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: const EdgeInsets.fromLTRB(12, 14, 26, 10),
                          width: 100.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppTheme.neutral300,
                            ),
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Iconsax.search_normal_1,
                                color: AppTheme.neutral900,
                                size: 3.h,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: searchController,
                                  decoration: const InputDecoration.collapsed(
                                    hintText: 'Type something...',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               GrayBarWidget(text:AppString.recentSearchesString,),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: ListTile(
                        leading: Image.asset(AppAssets.clockAsset),
                        trailing: Image.asset(AppAssets.closeCircleAsset,height: 5.h,width: 5.h),
                        title: const Text('Front-End Developer'),
                        // subtitle: const Text('Front-End Developer'),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
              GrayBarWidget(text:AppString.popularSearchesString,),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: ListTile(
                        leading: Image.asset(AppAssets.searchStatusAsset),
                        trailing: Image.asset(AppAssets.arrowRightAsset,height: 5.h,width: 5.h),
                        title: const Text('UI/UX Designer'),
                        //subtitle: const Text('UI/UX Designer'),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
