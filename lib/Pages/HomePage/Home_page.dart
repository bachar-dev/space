// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/app_colors/app_colors.dart';
import '../../core/constants/app_svgs/app_svgs.dart';
import '../DetailsPage/Details.dart';

final List categories = [
  'All',
  'Planets',
  'Stars',
  'Galaxies',
  'Nebulas',
];


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int selectedIndex = 0;
    return Scaffold(
      backgroundColor: AppColors.appBackGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade900,
                  filled: true,
                  labelText: "Search for planets and stars",
                  labelStyle: TextStyle(color: Colors.grey.shade200),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade900),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                              border: Border.all(
                                color: Colors.grey.shade900,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                categories[index],
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(height: 70),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: -80,
                    left: 10,
                    child: SvgPicture.asset(
                      AppImages.starsSvg,
                    )),
                Positioned(
                  top: -70,
                  left: 200,
                  child: SvgPicture.asset(
                    AppImages.starsSvg,
                  ),
                ),
                Positioned(
                  bottom: -20,
                  child: SvgPicture.asset(
                    AppImages.starsSvg,
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: 100,
                  child: SvgPicture.asset(
                    AppImages.starsSvg,
                  ),
                ),
                Positioned(
                  top: 50,
                  child: SvgPicture.asset(
                    AppImages.starsSvg,
                  ),
                ),
                const SingleChildScrollView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Planets(
                        planet: AppImages.earthSvg,
                        title: 'Mother Earth',
                        description:
                            'Earth is the third planet from\n the sun and the only known \nplanet to support life. it has a\n diameter of 12,742 km.',
                        color: AppColors.motherEarthColor,
                        height: 170,
                        top: -100,
                        left: -10,
                        Color2: Colors.blue,
                      ),
                      SizedBox(width: 40),
                      Planets(
                        planet: AppImages.venusSvg,
                        title: "Venus",
                        description:
                            'Venus is the Second Planet\n from the sun and is often\n referred to as the Earths\'s \n sister planet.',
                        color: AppColors.marsColor,
                        height: 250,
                        top: -130,
                        left: -45,
                        Color2: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Articles",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: size.height * 0.23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade900,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 400,
                      width: 125,
                      decoration: const BoxDecoration(
                          color: AppColors.uranusColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 25),
                            SvgPicture.asset(
                              AppImages.uranusSvg,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Positioned(
                          top: -40,
                          child: Text("Ice giant -Uranus",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Positioned(
                          child: Text(
                              "Uranus is a fascinating planet that is \n often overlooked due to its distance \n from Earth and lack of visible features.",
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 12,
                              )),
                        ),
                        Positioned(
                            bottom: -29,
                            right: 38,
                            child: Text("By Louise Stark | 12 May 2023 ",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 12))),
                        Positioned(
                          bottom: -90,
                          right: 10,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              shape: BoxShape.circle,
                              color: Colors.deepPurple,
                            ),
                            child: const Icon(Icons.arrow_forward,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Planets extends StatelessWidget {
  const Planets({
    super.key,
    required this.planet,
    required this.title,
    required this.description,
    required this.color,
    required this.height,
    required this.top,
    required this.left,
    required this.Color2,
  });

  final String planet;
  final String title;
  final String description;
  final Color color;
  final double height;
  final double top;
  final double left;
  final Color Color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
          gradient: LinearGradient(colors: [
            color,
            color.withOpacity(0.8),
          ])),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: top,
            left: left,
            child: SvgPicture.asset(
              planet,
              height: height,
            ).animate().rotate(
                  duration: const Duration(minutes: 5),
                ),
          ),
          Positioned(
            bottom: 120,
            left: 10,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 10,
            child: Text(
              description,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),
          Positioned(
            bottom: -20,
            left: 70,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsPage()));
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color2,
                        offset: const Offset(0, 7),
                        blurRadius: 10,
                        spreadRadius: 0.1,
                        blurStyle: BlurStyle.normal),
                  ],
                  shape: BoxShape.circle,
                  color: Color2,
                  border: Border.all(color: Colors.white),
                ),
                child: const Icon(Icons.arrow_forward_rounded,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
