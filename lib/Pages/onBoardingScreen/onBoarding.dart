import 'package:flutter/material.dart';
import 'package:space/Pages/onBoardingScreen/get%20started%20Button/getStarted.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:space/core/constants/app_svgs/app_svgs.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 110,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Explore the \nUniverse",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w900),
                ).animate().fade(),
                Text(
                  "Journey through the cosmos\n with our space app",
                  style: TextStyle(color: Colors.grey.shade400),
                ).animate().fade(),
                const SizedBox(
                  height: 20,
                ),
                const GetStarted().animate().fade(),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: SvgPicture.asset(AppImages.uranusSvg)
                .animate()
                .rotate(duration: const Duration(minutes: 2)),
          ),
          Positioned(
            bottom: 10,
            right: 11,
            child: SvgPicture.asset(AppImages.marsSvg).animate().fade(),
          ),
          Positioned(
            bottom: 120,
            right: 40,
            child: SvgPicture.asset(AppImages.earthSvg).animate().rotate(
                  duration: const Duration(minutes: 2),
                ),
          ),
          Positioned(
            bottom: 300,
            child: SvgPicture.asset(AppImages.purplePlanetSvg),
          ),
          Positioned(
            bottom: 300,
            right: 1,
            child: SvgPicture.asset(AppImages.venusSvg)
                .animate()
                .rotate(duration: const Duration(minutes: 2)),
          ),
          Positioned(bottom: 300, child: SvgPicture.asset(AppImages.starsSvg)),
          Positioned(
              bottom: 250,
              left: 10,
              child: SvgPicture.asset(AppImages.starsSvg)),
          Positioned(
              bottom: 200,
              left: 40,
              child: SvgPicture.asset(AppImages.starsSvg)),
          Positioned(
              bottom: 170,
              left: 20,
              child: SvgPicture.asset(AppImages.fadedStarSvg)),
          Positioned(
            bottom: 400,
            left: 100,
            child: SvgPicture.asset(AppImages.fadedStarSvg),
          ),
          Positioned(
            bottom: 400,
            left: 200,
            top: 400,
            child: SvgPicture.asset(AppImages.fadedStarSvg),
          ),
          Positioned(
            bottom: 100,
            left: 100,
            child: SvgPicture.asset(AppImages.fadedStarSvg),
          ),
          Positioned(
            bottom: 100,
            left: 150,
            child: SvgPicture.asset(AppImages.starsSvg),
          ),
          Positioned(
            bottom: 90,
            left: 120,
            child: SvgPicture.asset(AppImages.starsSvg),
          ),
          Positioned(
            bottom: 100,
            left: 200,
            child: SvgPicture.asset(AppImages.fadedStarSvg),
          ),
        ],
      ),
    );
  }
}
