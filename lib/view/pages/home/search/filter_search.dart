import 'package:find_job_amit/view/pages/home/search/post_date_content.dart';
import 'package:find_job_amit/view/pages/home/search/remot_content.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/back_button_widget.dart';
import '../../../widgets/chip_widget.dart';
import '../../../widgets/gray_bar_widget.dart';
import '../recent_job_card.dart';
import 'filter_content.dart';
import 'fulltime_content.dart';

class FilterSearch extends StatefulWidget {
  const FilterSearch({Key? key}) : super(key: key);

  @override
  State<FilterSearch> createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  /// search bar
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: BackButtonWidget(),
                      ),
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
                              Icon(
                                Iconsax.close_circle,
                                color: AppTheme.neutral900,
                                size: 3.2.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                /// filters
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet<void>(
                              isScrollControlled: true,
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return const Padding(
                                  padding: EdgeInsets.all(20),
                                  child: FilterContent(),
                                );
                              },
                            );
                          },
                          child: Icon(
                            Iconsax.setting_4,
                            color: AppTheme.neutral900,
                            size: 3.2.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Expanded(
                        flex: 7,
                        child: Row(
                          children: [
                            ChipWidget(
                              text: 'Remote',
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: RemoteContent(),
                                    );
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            ChipWidget(
                              text: 'Full Time',
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: TimeContent(),
                                    );
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            ChipWidget(
                              text: 'Post date',
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return const Padding(
                                      padding: EdgeInsets.all(20),
                                      child: PostDate(),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                const GrayBarWidget(
                  text: 'Featuring 120+ jobs',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: const RecentJobCard(),
                  /*const NoSearchFound(),*/
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
