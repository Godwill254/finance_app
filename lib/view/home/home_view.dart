// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:finance_app/common/color_extension.dart";
import "package:finance_app/common_widgets/segment_button.dart";
import "package:finance_app/common_widgets/status_button.dart";
import "package:finance_app/common_widgets/subscription_home_row.dart";
import "package:finance_app/common_widgets/upcoming_bill_row.dart";
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/home_bg.png"),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: StatusButton(
                                title: "Active subs",
                                value: "12",
                                statusColor: TColor.secondary,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: StatusButton(
                                title: "Highest subs",
                                value: "\$12.99",
                                statusColor: TColor.primary10,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: StatusButton(
                                title: "Lowest subs",
                                value: "\$2.99",
                                statusColor: TColor.secondaryG,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
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
            if (isSubscription)
              ListView.builder(
                padding: EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map? ?? {};
                  return SubscriptionHomeRow(sObj: sObj, onPressed: () {});
                },
              ),
            if (!isSubscription)
              ListView.builder(
                padding: EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: subArr.length,
                itemBuilder: (context, index) {
                  var sObj = subArr[index] as Map? ?? {};
                  return UpcomingBillRow(sObj: sObj, onPressed: () {});
                },
              ),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
