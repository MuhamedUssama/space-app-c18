import 'package:flutter/material.dart';
import 'package:space_app/core/models/planet_model.dart';
import 'package:space_app/core/utils/app_colors.dart';
import 'package:space_app/core/utils/app_text_styles.dart';
import 'package:space_app/core/widgets/custom_explore_button.dart';
import 'package:space_app/core/widgets/custom_moon_header.dart';
import 'package:space_app/screens/planet_details_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          const CustomMoonHeader(
            title: 'Explore',
            subTitle: 'Which planet\nwould you like to explore?',
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (page) {
                currentPage = page;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/images/${Planet.planets[index].pngImage}',
                );
              },
              itemCount: Planet.planets.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                    shape: const CircleBorder(),
                    iconSize: 28,
                  ),
                  icon: const Icon(Icons.arrow_back),
                ),
                Text(
                  Planet.planets[currentPage].name,
                  style: AppTextStyles.bodyMeduim,
                ),
                IconButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: AppColors.white,
                    shape: const CircleBorder(),
                    iconSize: 28,
                  ),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          CustomExploreButton(
            text: 'Explore ${Planet.planets[currentPage].name}',
            onPressed: () {
              Navigator.pushNamed(
                context,
                PlanetDetailsScreen.routeName,
                arguments: Planet.planets[currentPage],
              );
            },
          ),
        ],
      ),
    );
  }
}
