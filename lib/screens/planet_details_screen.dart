import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space_app/core/models/planet_model.dart';
import 'package:space_app/core/utils/app_colors.dart';
import 'package:space_app/core/utils/app_text_styles.dart';
import 'package:space_app/core/widgets/custom_moon_header.dart';

class PlanetDetailsScreen extends StatefulWidget {
  static const String routeName = '/planet-details';
  const PlanetDetailsScreen({super.key});

  @override
  State<PlanetDetailsScreen> createState() => _PlanetDetailsScreenState();
}

class _PlanetDetailsScreenState extends State<PlanetDetailsScreen> {
  late Planet planet;
  @override
  void didChangeDependencies() {
    planet = ModalRoute.of(context)?.settings.arguments as Planet;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          CustomMoonHeader(
            title: planet.name,
            subTitle: planet.title,
            isDetailsScreen: true,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ModelViewer(
                    backgroundColor: AppColors.black,
                    src: 'assets/models/${planet.model3d}',
                    alt: planet.title,
                    ar: false,
                    autoRotate: true,
                    disableZoom: true,
                  ),
                ),
                const SizedBox(height: 16),
                Text('About', style: AppTextStyles.bodyMeduim),
                const SizedBox(height: 16),
                Text(planet.about, style: AppTextStyles.bodySmall),
                const SizedBox(height: 16),
                Text(
                  'Distance from Sun (km): ${planet.distanceFromSunKm}',
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                Text(
                  'Length of Day (hours): ${planet.lengthOfDayHours}',
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                Text(
                  'Orbital Period (Earth years) : ${planet.orbitalPeriodYears}',
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                Text(
                  'Radius (km):  ${planet.radiusKm}',
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                Text(
                  'Mass (kg):  ${planet.massKg}',
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                Text(
                  'Gravity (m/s²):  ${planet.gravityMs2}',
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                Text(
                  'Surface Area (km²):   ${planet.surfaceAreaKm2}',
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: .bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
