import 'package:creams/constant/assets.dart';
import 'package:creams/constant/colors.dart';
import 'package:creams/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then(
      (_) => Navigator.pushReplacementNamed(context, '/register'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackground,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            AppAssets.app_logo,
          ),
        ),
      ),
    );
  }
}
