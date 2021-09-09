import 'package:creams/constant/assets.dart';
import 'package:creams/constant/colors.dart';
import 'package:creams/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 31,
            right: 31,
            top: 21,
          ),
          child: Column(
            children: [
              Gap(360),
              Center(
                child: Image.asset(
                  AppAssets.app_logo,
                ),
              ),
              Gap(23),
              Text(
                'Dreams Come True',
                style: GoogleFonts.kodchasan(
                  fontStyle: FontStyle.italic,
                  color: AppColors.kAsh,
                ),
              ),
              Gap(97),
              NextButton(
                onPressed: () {},
                label: 'Sign Up',
              ),
              Gap(25),
              NextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                label: 'Sign In',
                color: AppColors.kBrown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
