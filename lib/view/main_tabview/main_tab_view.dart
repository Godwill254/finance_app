// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:finance_app/common/color_extension.dart";
import "package:finance_app/view/home/home_view.dart";
import "package:flutter/material.dart";

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabView();
}

class _MainTabView extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTabView = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TColor.gray,
        body: Stack(
          children: [
            PageStorage(bucket: pageStorageBucket, child: currentTabView),
            SafeArea(
              child: Column(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // Bottom tab
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/bottom_bar_bg.png",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // Home tab view
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 0;
                                      currentTabView = HomeView();
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/images/home.png",
                                    width: 30,
                                    height: 30,
                                    color: selectTab == 0
                                        ? TColor.white
                                        : TColor.gray30,
                                  ),
                                ),
                                // Budget tab view 
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 1;
                                      currentTabView = Container();
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/images/budgets.png",
                                    width: 30,
                                    height: 30,
                                    color: selectTab == 1
                                        ? TColor.white
                                        : TColor.gray30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                  height: 50,
                                ),
                                //Calendar tab view 
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 2;
                                      currentTabView = Container();
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/images/calendar.png",
                                    width: 30,
                                    height: 30,
                                    color: selectTab == 2
                                        ? TColor.white
                                        : TColor.gray30,
                                  ),
                                ),
                                // Credit card tab view
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 3;
                                      currentTabView = Container();
                                    });
                                  },
                                  icon: Image.asset(
                                    "assets/images/creditcards.png",
                                    width: 30,
                                    height: 30,
                                    color: selectTab == 3
                                        ? TColor.white
                                        : TColor.gray30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //The center button in the bottom tab
                        InkWell(
                          onTap:(){},
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: TColor.secondary.withOpacity(0.25),
                                  blurRadius: 10,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/images/center_btn.png",
                              width: 55,
                              height: 55,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
