import 'package:flutter/material.dart';
import 'package:flutter_b14/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/Group.png', title: 'Trending News'),
    OnBoardingModel(
        image: 'assets/images/Group-1.png', title: 'React, Save & Share News'),
    OnBoardingModel(
        image: 'assets/images/Group-2.png',
        title: 'Videos & Live News From YouTube'),
    OnBoardingModel(
        image: 'assets/images/Group-3.png',
        title: 'Browse News From Variety Of Categories'),
  ];

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Image.asset(onBoardingList[i].image),
                      SizedBox(
                        height: 30,
                      ),
                      Text(onBoardingList[i].title)
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
