import 'package:mentorku/models/category.dart';

class Mentor {
  final int id;
  final String name;
  final Category category;
  final String profileImg;
  final String companyName;
  final List<Map<String, dynamic>> experiences;
  final List<Map<String, dynamic>> reviews;
  final List<String> portofolioImg;

  Mentor({
    required this.id,
    required this.name,
    required this.category,
    required this.profileImg,
    required this.companyName,
    required this.experiences,
    required this.reviews,
    required this.portofolioImg,
  });
}

List<Mentor> mentorList = [
  Mentor(
    id: 0,
    name: 'Uden Yeager',
    category: categoryList[0],
    profileImg: 'assets/profile2.png',
    companyName: 'Google',
    experiences: [
      {
        'companyLogo': 'assets/icon-google.png',
        'companyName': 'Google',
        'title': 'UI/UX Lead',
        'workingPeriod': '4 Months',
      },
      {
        'companyLogo': 'assets/icon-gojek.png',
        'companyName': 'Gojek',
        'title': 'UI/UX Lead',
        'workingPeriod': '1 Year',
      },
    ],
    reviews: [
      {
        'reviewerName': 'Joko Santoso',
        'review': 'Wow, he\'s a great Mentor',
      },
      {
        'reviewerName': 'Joko Santoso',
        'review': 'Wow, he\'s a great Mentor',
      },
      {
        'reviewerName': 'Joko Santoso',
        'review': 'Wow, he\'s a great Mentor',
      },
    ],
    portofolioImg: [
      'assets/portfolio1.png',
      'assets/portfolio2.png',
      'assets/portfolio3.png',
    ],
  ),
  Mentor(
    id: 1,
    name: 'Dono Ackerman',
    category: categoryList[3],
    profileImg: 'assets/profile3.png',
    companyName: 'Google',
    experiences: [
      {
        'companyLogo': 'assets/icon-google.png',
        'companyName': 'Google',
        'title': 'Mobile Developer Lead',
        'workingPeriod': '4 Months',
      },
      {
        'companyLogo': 'assets/icon-gojek.png',
        'companyName': 'Gojek',
        'title': 'Mobile Developer',
        'workingPeriod': '1 Year',
      },
    ],
    reviews: [
      {
        'reviewerName': 'Joko Santoso',
        'review': 'Wow, he\'s a great Mentor',
      },
      {
        'reviewerName': 'Joko Santoso',
        'review': 'Wow, he\'s a great Mentor',
      },
      {
        'reviewerName': 'Joko Santoso',
        'review': 'Wow, he\'s a great Mentor',
      },
    ],
    portofolioImg: [
      'assets/portfolio1.png',
      'assets/portfolio2.png',
      'assets/portfolio3.png',
    ],
  ),
];
