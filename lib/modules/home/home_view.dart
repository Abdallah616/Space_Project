import 'package:flutter/material.dart';
import 'package:space/core/data/planet_data.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/core/widgets/action_button.dart';
import 'package:space/core/widgets/custom_elevated_button.dart';
import 'package:space/models/planet.dart';
import 'package:space/modules/planetDetails/planet_details_view.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/home';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PageController _pageController;
  int _currentIndex = 0;

  final List<Planet> _planets = PlanetData.planets;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPreviousPlanet() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToNextPlanet() {
    if (_currentIndex < _planets.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                Positioned.fill(child: Assets.images.homeTopBg.image()),
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.black, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),

                SafeArea(
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            'Explore',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Which planet\nwould you like to explore?',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: _planets.length,
              itemBuilder: (context, index) {
                return Center(child: _planets[index].image);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: _currentIndex > 0,
                  child: ActionButton(
                    icon: Icons.arrow_back,
                    onPressed: _goToPreviousPlanet,
                  ),
                ),

                Text(
                  _planets[_currentIndex].name,
                  style: const TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: _currentIndex < _planets.length - 1,
                  child: ActionButton(
                    icon: Icons.arrow_forward,
                    onPressed: _goToNextPlanet,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 24.0,
            ),
            child: CustomElevatedButton(
              text: 'Explore ${_planets[_currentIndex].name}',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PlanetDetailsView.routeName,
                  arguments: _planets[_currentIndex],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
