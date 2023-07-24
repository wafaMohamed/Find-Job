import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../utilities/themes/apptheme.dart';
import '../../../../widgets/text_widget.dart';



class CompanyIndex extends StatelessWidget {
  const CompanyIndex({Key? key}) : super(key: key);

  void _urlWebsites() async {
    var uri = Uri.parse("https://twitter.com");
    await launch(uri.toString());
  }

  /* void _openEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextWidget(
              textAlign: TextAlign.start,
              text: 'Contact Us',
              style: TextStyle(
                fontFamily: 'SF',
                overflow: TextOverflow.ellipsis,
                color: AppTheme.neutral900,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              FittedBox(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 14, 26, 10),
                  width: 43.w,
                  height: 9.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppTheme.neutral300,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        textAlign: TextAlign.start,
                        text: 'Email',
                        style: TextStyle(
                          fontFamily: 'SF',
                          overflow: TextOverflow.ellipsis,
                          color: AppTheme.neutral400,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextWidget(
                        textAlign: TextAlign.start,
                        text: 'twitter@mail.com',
                        style: TextStyle(
                          fontFamily: 'SF',
                          overflow: TextOverflow.ellipsis,
                          color: AppTheme.neutral900,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              InkWell(
                onTap: _urlWebsites,
                child: FittedBox(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 14, 26, 10),
                    width: 43.w,
                    height: 9.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppTheme.neutral300,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget(
                          textAlign: TextAlign.start,
                          text: 'Website',
                          style: TextStyle(
                            fontFamily: 'SF',
                            overflow: TextOverflow.ellipsis,
                            color: AppTheme.neutral400,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget(
                          textAlign: TextAlign.start,
                          text: 'https://twitter.com',
                          maxLines: 3,
                          style: TextStyle(
                            fontFamily: 'SF',
                            overflow: TextOverflow.ellipsis,
                            color: AppTheme.neutral900,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextWidget(
              textAlign: TextAlign.start,
              text: 'About Company',
              style: TextStyle(
                fontFamily: 'SF',
                overflow: TextOverflow.ellipsis,
                color: AppTheme.neutral900,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          TextWidget(
            textAlign: TextAlign.start,
            text:
                'Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including Best Staffing Firm to Work For 2018 at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.',
            maxLines: 30,
            style: TextStyle(
              fontFamily: 'SF',
              overflow: TextOverflow.ellipsis,
              color: AppTheme.neutral700,
              fontSize: 9.sp,
            ),
          ),
        ],
      ),
    );
  }
}
