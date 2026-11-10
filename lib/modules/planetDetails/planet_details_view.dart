import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space/core/gen/assets.gen.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/core/widgets/action_button.dart';
import 'package:space/models/planet.dart';

class PlanetDetailsView extends StatelessWidget {
  static const String routeName = '/planet_details';

  const PlanetDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
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
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: ActionButton(
                              icon: Icons.arrow_back,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                planet.name,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              planet.title,
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 300,
              width: double.infinity,
              child: Flutter3DViewer(
                src: planet.model3dPath,
                enableTouch: true,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    planet.about,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),

                  _buildDetailsRow(
                    'Distance from Sun (km) : ',
                    planet.distance,
                  ),
                  _buildDetailsRow(
                    'Length of Day (hours) : ',
                    planet.lengthOfDay,
                  ),
                  _buildDetailsRow(
                    'Orbital Period (Earth years) : ',
                    planet.orbitalPeriod,
                  ),
                  _buildDetailsRow('Radius (km) : ', planet.radius),
                  _buildDetailsRow('Mass (kg) : ', planet.mass),
                  _buildDetailsRow('Gravity (m/s²) : ', planet.gravity),
                  _buildDetailsRow('Surface Area (km²) : ', planet.surfaceArea),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: title,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.white,
              ),
            ),
            TextSpan(
              text: value,
              style: const TextStyle(color: AppColors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
