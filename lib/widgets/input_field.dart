import 'dart:ui';

import 'package:creams/constant/assets.dart';
import 'package:creams/constant/colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    required this.text,
    required this.textController,
    this.obscured = false,
    required this.field,
    required this.keyboard,
  });

  final String text;
  final bool obscured;
  final TextEditingController textController;
  final String field;
  final TextInputType keyboard;

  String? validateText(value) {
    if (value.isEmpty) {
      return "Required*";
    } else {
      return null;
    }
  }

  String? validatePhone(value) {
    if (value.isEmpty) {
      return "Required*";
    }
    if (value.length != 11) {
      return "Phone number must be 11 in length";
    } else {
      return null;
    }
  }

  String? isValidEmail(value) {
    bool validEmail = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value);
    if (value.isEmpty) {
      return "Required*";
    }
    if (!validEmail) {
      return "Please enter a valid email";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscured,
      controller: textController,
      validator: (field == 'Email')
          ? isValidEmail
          : (field == 'Phone')
              ? validatePhone
              : validateText,
      keyboardType: keyboard,
      decoration: InputDecoration(
        fillColor: Color(0x80ffffff),
        filled: true,
        hintText: text,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 21),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Color(0x33D4AF37),
            child: Image.asset(AppAssets.person),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(
              0x80ffffff,
            ),
            width: 1.0,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(
              0x80ffffff,
            ),
            width: 2.0,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}

//
// class PasswordField extends StatelessWidget {
//   const PasswordField({
//     required this.text,
//     required this.textController,
//     required this.field,
//     required this.isHidden,
//     required this.suffix,
//     this.hintText = 'Enter your password',
//   });

//   final String text;
//   final TextEditingController textController;
//   final isHidden;
//   final String field;
//   final Widget suffix;
//   final String hintText;

//   String? validateText(value) {
//     if (value.isEmpty) {
//       return "Required*";
//     }
//     if (value.length < 4) {
//       return 'Password is too short!';
//     }
//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: isHidden,
//       keyboardType: TextInputType.text,
//       controller: textController,
//       validator: validateText,
//       decoration: InputDecoration(
//         hintText: hintText,
//         suffixIcon: suffix,
//         contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(8.0),
//             topRight: Radius.circular(8.0),
//             bottomLeft: Radius.circular(8.0),
//             bottomRight: Radius.circular(8.0),
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//               color: Color(
//                 0xff26200B,
//               ),
//               width: 1.0),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(8.0),
//             topRight: Radius.circular(8.0),
//             bottomLeft: Radius.circular(8.0),
//             bottomRight: Radius.circular(8.0),
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//               color: Color(
//                 0xff26200B,
//               ),
//               width: 2.0),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(8.0),
//             topRight: Radius.circular(8.0),
//             bottomLeft: Radius.circular(8.0),
//             bottomRight: Radius.circular(8.0),
//           ),
//         ),
//       ),
//     );
//   }
// }

class PasswordField extends StatelessWidget {
  const PasswordField({
    required this.text,
    required this.textController,
    required this.field,
    required this.isHidden,
    required this.suffix,
    this.hintText = 'Enter your password',
  });

  final String text;
  final TextEditingController textController;
  final isHidden;
  final String field;
  final Widget suffix;
  final String hintText;

  String? validateText(value) {
    if (value.isEmpty) {
      return "Required*";
    }
    if (value.length < 4) {
      return 'Password is too short!';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidden,
      keyboardType: TextInputType.text,
      controller: textController,
      validator: validateText,
      decoration: InputDecoration(
        fillColor: Color(0x80ffffff),
        filled: true,
        hintText: text,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 21),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Color(0x33D4AF37),
            child: Image.asset(AppAssets.person),
          ),
        ),
        suffixIcon: suffix,
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(
              0x80ffffff,
            ),
            width: 1.0,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(
              0x80ffffff,
            ),
            width: 2.0,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
