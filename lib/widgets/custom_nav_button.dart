import 'package:flutter/material.dart';
import 'package:mentorku/shared/theme.dart';

class CustomNavButton extends StatelessWidget {
  final String label;
  final String logoImg;
  final bool? isSelected;
  final VoidCallback onTap;
  const CustomNavButton({
    Key? key,
    required this.label,
    required this.logoImg,
    required this.onTap,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                child: Image.asset(
                  logoImg,
                  color: isSelected != null && isSelected == true
                      ? kPrimaryColor
                      : kGreyColor2,
                ),
              ),
              isSelected != null && isSelected == true
                  ? const SizedBox(
                      width: 4,
                    )
                  : const SizedBox(),
              isSelected != null && isSelected == true
                  ? Text(
                      label,
                      style: blueTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          isSelected != null && isSelected == true
              ? const SizedBox(
                  height: 4,
                )
              : const SizedBox(),
          isSelected != null && isSelected == true
              ? Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kPrimaryColor,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
