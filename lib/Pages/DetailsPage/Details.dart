import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:space/core/constants/app_svgs/app_svgs.dart';

import '../../core/constants/app_colors/app_colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 10,
              left: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: SvgPicture.asset(AppImages.saturnSvg),
            ),
            Positioned(
              top: 100,
              left: 20,
              child: SvgPicture.asset(AppImages.fadedStarSvg),
            ),
            Positioned(
              top: 100,
              right: 20,
              child: SvgPicture.asset(AppImages.fadedStarSvg),
            ),
            Positioned(
              top: 120,
              right: 60,
              child: SvgPicture.asset(AppImages.fadedStarSvg),
            ),
            Positioned(
              top: 200,
              left: 10,
              child: SvgPicture.asset(AppImages.fadedStarSvg),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade900,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Saturn",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "The jewels of the Solar System",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                          Icon(Icons.favorite_border_outlined,
                              color: Colors.pink, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Saturn is often referred to as the \"jewel of the solar system\" due to its stunning rings that are visible from Earth. With a diameter of 116,460 km, Saturn is the second largest planet in our solar system and is known for its unique and beautiful ring system, which is composed of ice particles, dust, and small rocks. The rings are believed to be relatively young, having formed less than 100 million years ago from the debris of a destroyed moon or comet. Saturn's atmosphere is primarily composed of hydrogen and helium, with trace amounts of other gases. ",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            wordSpacing: 1,
                            letterSpacing: 0.2,
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "By Daisy Stephenson | 02 May 2023",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
