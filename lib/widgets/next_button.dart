import 'package:creams/constant/assets.dart';
import 'package:creams/constant/colors.dart';
import 'package:creams/ui/touchables/touchable_opacity.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  NextButton({
    required this.label,
    required this.onPressed,
    this.disabled = false,
    this.busy = false,
    this.color = AppColors.kPrimary,
  });

  final String label;
  final VoidCallback onPressed;
  final bool disabled;
  final bool busy;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 30.0, right: 2.0, top: 8.0, bottom: 8.0),
        child: TouchableOpacity(
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Roboto-Bold',
                  color: AppColors.kWhite,
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 30, bottom: 15),
                child: Image.asset(AppAssets.forward_icon),
              )
            ],
          ),
        ),
      ),
    );
  }
}
