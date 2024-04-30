// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:finance_app/common/color_extension.dart";
import "package:finance_app/common_widgets/segment_button.dart";
import "package:flutter/material.dart";

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  bool isSubscription = true;
  List subArr = [
    {
      "name": "Spotify",
      "icon": "assets/images/spotify_logo.png",
      "price": "6.99"
    },
    {
      "name": "Youtube",
      "icon": "assets/images/youtube_logo.png",
      "price": "20.99"
    },
    {
      "name": "OneDrive",
      "icon": "assets/images/onedrive_logo.png",
      "price": "3.99"
    },
    {
      "name": "Netflix",
      "icon": "assets/images/netflix_logo.png",
      "price": "22.99"
    },
  ];

  List billArr = [
    {"name": "Spotify", "date": DateTime(2023, 08, 21), "price": "6.99"},
    {"name": "Youtube", "date": DateTime(2023, 08, 21), "price": "20.99"},
    {"name": "OneDrive", "date": DateTime(2023, 08, 21), "price": "3.99"},
    {"name": "Netflix", "date": DateTime(2023, 08, 21), "price": "22.99"},
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: media.width * 1.1,
              decoration: BoxDecoration(
                color: TColor.gray70.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    25,
                  ),
                  bottomRight: Radius.circular(
                    25,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SegmentButton(
                      title: "Your subscriptions",
                      onPressed: () {
                        setState(() {
                          isSubscription = !isSubscription;
                        });
                      },
                      isActive: isSubscription,
                    ),
                  ),
                  Expanded(
                    child: SegmentButton(
                      title: "Upcoming bills",
                      onPressed: () {
                        setState(() {
                          isSubscription = !isSubscription;
                        });
                      },
                      isActive: !isSubscription,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: subArr.length,
              itemBuilder: (context, index) {
                var sObj = subArr[index] as Map? ?? {};
              },
            ),
          ],
        ),
      ),
    );
  }
}
