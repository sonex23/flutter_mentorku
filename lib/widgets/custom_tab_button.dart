import 'package:flutter/material.dart';
import 'package:mentorku/shared/theme.dart';

class CustomTabButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const CustomTabButton({
    Key? key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        height: 35,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: isSelected ? kAccentColor : null,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: kGreyBackground2,
          ),
        ),
        duration: const Duration(milliseconds: 100),
        child: Text(
          label,
          style: whiteTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
            color: isSelected ? Colors.white : kGreyColor1,
          ),
        ),
      ),
    );
  }
}
