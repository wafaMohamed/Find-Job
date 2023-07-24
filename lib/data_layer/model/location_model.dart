import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/assets/app_assets.dart';
import '../../utilities/themes/apptheme.dart';

class LocationClass {
  final String image;
  final String countryName;
  bool isSelected;

  LocationClass({
    required this.image,
    required this.countryName,
    required this.isSelected,
  });

  static List<LocationClass> locationList = <LocationClass>[
    LocationClass(
      image: AppAssets.unitedStatesAsset,
      countryName: 'United States',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.malaysiaAsset,
      countryName: 'Malaysia',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.singaporeAsset,
      countryName: 'Singapore',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.indonesiaAsset,
      countryName: 'Indonesia',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.philiphinesAsset,
      countryName: 'Philiphines',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.polandiaAsset,
      countryName: 'Poland',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.indiaAsset,
      countryName: 'India',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.vietnamAsset,
      countryName: 'Vietnam',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.chinaAsset,
      countryName: 'China',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.canadaAsset,
      countryName: 'Canada',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.saudiArabiaAsset,
      countryName: 'Saudi Arabia',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.argentinaAsset,
      countryName: 'Argentina',
      isSelected: false,
    ),
    LocationClass(
      image: AppAssets.brazilAsset,
      countryName: 'Brazil',
      isSelected: false,
    ),
  ];
}

class SelectLocationCountry extends StatelessWidget {
  LocationClass? location;
  SelectLocationCountry(this.location, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("${location?.image}",),
          radius:15,
          backgroundColor: AppTheme.backgroundOnBoarding,
        ),
        SizedBox(width: 2.w ,),
        Text("${location?.countryName}",style: TextStyle(
          fontSize: 9.sp,
        ),),
      ],
    );
  }
}

