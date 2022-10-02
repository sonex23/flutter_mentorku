import 'package:flutter/material.dart';
import 'package:mentorku/shared/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyBackground2,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(defaultMargin),
                height: 115,
                color: kPrimaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        'assets/icon-back.png',
                        height: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icon-save.png',
                        color: Colors.white,
                        height: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 215,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                      top: 90,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      color: kGreyBackground1,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Positioned.fill(
                    top: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/profile2.png',
                          width: 100,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Uden Yeager',
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'UI/UX Designer, Google',
                          style: greyTextStyle1.copyWith(
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              ContactLogo(
                                assetImg: 'assets/icon-dribble.png',
                              ),
                              ContactLogo(
                                assetImg: 'assets/icon-linkedin.png',
                              ),
                              ContactLogo(
                                assetImg: 'assets/icon-twitter.png',
                              ),
                              ContactLogo(
                                assetImg: 'assets/icon-youtube.png',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kAccentColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'Hire Me',
                            style: whiteTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'My Experience (2)',
            style: blueTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(defaultMargin),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Experience",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: kGreyBackground2,
                            ),
                          ),
                          child: Image.asset(
                            'assets/icon-google.png',
                            width: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Google',
                              style: greyTextStyle2.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'UI/UX Lead',
                              style: blueTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '3 Months',
                          style: greyTextStyle1.copyWith(
                            fontWeight: regular,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: kGreyBackground2,
                            ),
                          ),
                          child: Image.asset(
                            'assets/icon-gojek.png',
                            width: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gojek Indonesia',
                              style: greyTextStyle2.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Product Designer',
                              style: blueTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '3 Months',
                          style: greyTextStyle1.copyWith(
                            fontWeight: regular,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'My Portofolio',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/portfolio1.png',
                            height: 135,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'assets/portfolio2.png',
                            height: 135,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'assets/portfolio3.png',
                            height: 135,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContactLogo extends StatelessWidget {
  final String assetImg;
  const ContactLogo({
    Key? key,
    required this.assetImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Image.asset(
        assetImg,
        width: 18,
      ),
    );
  }
}
