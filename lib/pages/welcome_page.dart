import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  final List<Map<String, String>> data = [
    {
      "image": "welcome-one.png",
      "text": 'Trips',
      "subText": "Discover",
      "description":
          "Mountain heights gives you an incredible sense of wisdom along with endurance test"
    },
    {
      "image": "welcome-two.png",
      "text": 'Location',
      "subText": "Mountain",
      "description":
          "Mountain heights gives you an incredible sense of wisdom along with endurance test"
    },
    {
      "image": "welcome-three.png",
      "text": 'Avenue',
      "subText": "Boat Getaway",
      "description":
          "Mountain heights gives you an incredible sense of wisdom along with endurance test"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/${data[index]["image"]}"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: "${data[index]["text"]}",
                        ),
                        AppText(text: "${data[index]["subText"]}", size: 30),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250.0,
                          child: AppText(
                              text: "${data[index]["description"]}",
                              color: AppColors.textColor2,
                              size: 14),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(
                          width: 120,
                        )
                      ],
                    ),
                    Column(
                        children: List.generate(
                            3,
                            (indexDots) => Container(
                                  margin: const EdgeInsets.only(bottom: 2),
                                  width: 8,
                                  height: index == indexDots ? 25 : 8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index == indexDots
                                          ? AppColors.mainColor
                                          : AppColors.mainColor
                                              .withOpacity(0.3)),
                                )))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
