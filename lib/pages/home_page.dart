import 'package:flutter/material.dart';
import 'package:mentorku/models/category.dart';
import 'package:mentorku/models/mentor.dart';
import 'package:mentorku/shared/theme.dart';
import 'package:mentorku/widgets/custom_tab_button.dart';
import 'package:mentorku/widgets/mentor_card.dart';
import 'package:mentorku/widgets/mentor_tips_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int mentorPageId = categoryList[0].id;
  List<Mentor> mentorLoad = [];

  void loadMentor() {
    mentorLoad.clear();
    for (var mentor in mentorList) {
      if (mentor.category.id == mentorPageId) {
        setState(() {
          mentorLoad.add(mentor);
        });
      }
    }
  }

  @override
  void initState() {
    loadMentor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(defaultMargin),
            height: 160.0,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/profile1.png'),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Good Morning',
                      style: greyTextStyle2.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                    Text(
                      'Bima Semesta',
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  width: 18,
                  height: 19,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon-notif.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 130.0),
            padding: EdgeInsets.only(
              left: defaultMargin,
              top: defaultMargin,
              bottom: defaultMargin,
            ),
            decoration: BoxDecoration(
              color: kGreyBackground1,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 245,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(15),
                            filled: true,
                            fillColor: kGreyBackground2,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Find your favorite mentor",
                            hintStyle: greyTextStyle1.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin),
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: kAccentColor,
                        ),
                        child: Image.asset(
                          'assets/icon-search.png',
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 35,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: ((context, index) {
                        return CustomTabButton(
                          isSelected: categoryList[index].id == mentorPageId
                              ? true
                              : false,
                          label: categoryList[index].name,
                          onTap: () => setState(() {
                            mentorPageId = categoryList[index].id;
                            loadMentor();
                          }),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Best Mentor',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: mentorLoad.map((mentor) {
                        return MentorCard(
                          mentor: mentor,
                        );
                      }).toList(),
                      //    children: [

                      //    ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Mentor Tips",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: const [
                        MentorTipsBanner(
                          label: 'How to speak fluently with \nstrangers',
                          backgroundImg: 'assets/content1.png',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MentorTipsBanner(
                          label: 'How to do the right presentation \nactivity',
                          backgroundImg: 'assets/content2.png',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
