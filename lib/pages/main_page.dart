import 'package:flutter/material.dart';
import 'package:mentorku/pages/home_page.dart';
import 'package:mentorku/widgets/custom_nav_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
  ];
  int pageSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages[0],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 88.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomNavButton(
                    onTap: () => setState(() {
                      pageSelectedIndex = 0;
                    }),
                    label: 'Home',
                    logoImg: 'assets/icon-home.png',
                    isSelected: pageSelectedIndex == 0 ? true : false,
                  ),
                  CustomNavButton(
                    onTap: () => setState(() {
                      pageSelectedIndex = 1;
                    }),
                    label: "Saved",
                    logoImg: "assets/icon-save.png",
                    isSelected: pageSelectedIndex == 1 ? true : false,
                  ),
                  CustomNavButton(
                    onTap: () => setState(() {
                      pageSelectedIndex = 2;
                    }),
                    label: "Chat",
                    logoImg: "assets/icon-chat.png",
                    isSelected: pageSelectedIndex == 2 ? true : false,
                  ),
                  CustomNavButton(
                    onTap: () => setState(() {
                      pageSelectedIndex = 3;
                    }),
                    label: "Profile",
                    logoImg: "assets/icon-profile.png",
                    isSelected: pageSelectedIndex == 3 ? true : false,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
