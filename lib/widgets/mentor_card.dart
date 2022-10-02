import 'package:flutter/material.dart';
import 'package:mentorku/models/mentor.dart';
import 'package:mentorku/shared/theme.dart';

class MentorCard extends StatelessWidget {
  final Mentor mentor;
  const MentorCard({
    Key? key,
    required this.mentor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(10),
      width: 160,
      decoration: BoxDecoration(
        color: kGreyBackground2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(mentor.profileImg),
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            mentor.name,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "${mentor.category.name}, ${mentor.companyName}\n${mentor.reviews.length} Reviews",
            textAlign: TextAlign.center,
            style: greyTextStyle1.copyWith(
              fontWeight: regular,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detail-page');
            },
            child: Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(
                  color: kAccentColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Hire Me",
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
