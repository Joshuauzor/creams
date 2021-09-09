import 'package:creams/constant/assets.dart';
import 'package:creams/constant/colors.dart';
import 'package:creams/widgets/input_field.dart';
import 'package:creams/widgets/next_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isHidden = true;

  void _handleTap() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackground,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: AppColors.kAppBackground,
        elevation: 0,
        leadingWidth: 80,
        // centerTitle: centerTitle,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: () {
              if (Navigator.canPop(context)) Navigator.pop(context);
            },
            icon: Navigator.canPop(context)
                ? Image.asset(
                    AppAssets.backward_icon,
                    color: Colors.black,
                  )
                : SizedBox(),
          ),
        ),
        // title: SubHeaderText(title, color: textColor),
        // actions: actions,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 31,
            right: 31,
            top: 21,
          ),
          child: Form(
            child: Column(
              children: [
                Gap(49),
                Text(
                  'Sign In',
                  style: GoogleFonts.kodchasan(
                    color: Color(0xff4b4b4b),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(3),
                Text(
                  'Welcome Back',
                  style: GoogleFonts.kodchasan(
                    color: Color(0xff4b4b4b),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(42),
                InputField(
                  text: 'Username/Email',
                  textController: emailController,
                  field: 'Email',
                  keyboard: TextInputType.emailAddress,
                ),
                Gap(22),
                PasswordField(
                  text: 'Enter your password',
                  textController: passwordController,
                  // keyboard: TextInputType.text,
                  field: 'Password',
                  isHidden: _isHidden,
                  suffix: IconButton(
                    onPressed: _handleTap,
                    icon: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                ),
                Gap(22),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Lost Your Password?',
                    style: GoogleFonts.kodchasan(
                      color: Color(0xff4b4b4b),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Gap(22),
                NextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  label: 'Sign In',
                  color: AppColors.kBrown,
                ),
                Gap(41),
                Text(
                  'Or Sign in with',
                  style: GoogleFonts.kodchasan(
                    color: Color(0xff4b4b4b),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0x80ffffff),
                      child: Image.asset(AppAssets.google),
                    ),
                    Gap(40),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0x80ffffff),
                      child: Image.asset(AppAssets.facebook),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
