import 'dart:ui';

import 'package:creams/constant/assets.dart';
import 'package:creams/constant/colors.dart';
import 'package:creams/widgets/input_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackground,
      // appBar: AppBar(
      //   brightness: Brightness.dark,
      //   backgroundColor: AppColors.kAppBackground,
      //   elevation: 0,
      //   leadingWidth: 80,
      //   title: Text(
      //     'Explore',
      //     style: GoogleFonts.kodchasan(
      //       color: Color(0xff000000),
      //       fontSize: 18,
      //       fontWeight: FontWeight.w700,
      //     ),
      //   ),

      //   // title: SubHeaderText(title, color: textColor),
      //   // actions: actions,
      // ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(
              left: 26,
              right: 26,
              top: 21,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: GoogleFonts.kodchasan(
                        color: Color(0xff000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gap(187),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(AppAssets.search),
                        Gap(22.51),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(AppAssets.upload),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Gap(18),
                Column(
                  children: [
                    Container(
                      // width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssets.hottest),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 13,
                          bottom: 30,
                          left: 30,
                          right: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset(AppAssets.slider),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Hottest Talents',
                                  style: GoogleFonts.kodchasan(
                                    color: Color(0xffffffff),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Weekly',
                                  style: GoogleFonts.kodchasan(
                                    color: Color(0xffffffff),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Gap(6),
                                Text(
                                  'New Talents',
                                  style: GoogleFonts.kodchasan(
                                    color: Color(0xffffffff),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Talents',
                          style: GoogleFonts.kodchasan(
                            color: Color(0xff000000),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'See all',
                              style: GoogleFonts.kodchasan(
                                color: Color(0xffD4AF37),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Gap(8),
                            Image.asset(
                              AppAssets.forward_icon,
                              color: Color(0xffD4AF37),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(16),
                    Row(
                      children: [],
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class SliderContainer extends StatelessWidget {
  const SliderContainer({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 204,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.fill),
      ),
      // margin: EdgeInsets.only(right: 2),
    );
  }
}
