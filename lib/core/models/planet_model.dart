class Planet {
  final String name;
  final String pngImage;
  final String model3d;
  final String title;
  final String about;
  final String distanceFromSunKm;
  final String lengthOfDayHours;
  final double orbitalPeriodYears;
  final String radiusKm;
  final String massKg;
  final double gravityMs2;
  final String surfaceAreaKm2;

  Planet({
    required this.name,
    required this.pngImage,
    required this.model3d,
    required this.title,
    required this.about,
    required this.distanceFromSunKm,
    required this.lengthOfDayHours,
    required this.orbitalPeriodYears,
    required this.radiusKm,
    required this.massKg,
    required this.gravityMs2,
    required this.surfaceAreaKm2,
  });

  static List<Planet> planets = [
    Planet(
      name: "Sun",
      pngImage: "sun.png",
      model3d: "sun.glb",
      title: "The Sun: Our Solar System's Star",
      about:
          "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy.",
      distanceFromSunKm: "0",
      lengthOfDayHours: "0",
      orbitalPeriodYears: 0.0,
      radiusKm: "695,700",
      massKg: "1.989 × 10³⁰",
      gravityMs2: 274.0,
      surfaceAreaKm2: "6.09 × 10¹²",
    ),
    Planet(
      name: "Mercury",
      pngImage: "mercury.png",
      model3d: "mercury.glb",
      title: "Mercury: The Closest Planet",
      about:
          "Mercury is the smallest planet in our solar system and the closest to the Sun. It has a thin atmosphere and a surface scarred by impact craters, similar to our Moon.",
      distanceFromSunKm: "57,909,227",
      lengthOfDayHours: "1,407.60",
      orbitalPeriodYears: 0.24,
      radiusKm: "2,439.70",
      massKg: "3.301 × 10²³",
      gravityMs2: 3.7,
      surfaceAreaKm2: "7.48 × 10⁷",
    ),
    Planet(
      name: "Venus",
      pngImage: "venus.png",
      model3d: "venus.glb",
      title: "Venus: Earth's Toxic Twin",
      about:
          "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere traps heat, making it the hottest planet in our solar system.",
      distanceFromSunKm: "108,209,072",
      lengthOfDayHours: "5,832.20",
      orbitalPeriodYears: 0.62,
      radiusKm: "6,051.80",
      massKg: "4.867 × 10²⁴",
      gravityMs2: 8.87,
      surfaceAreaKm2: "4.60 × 10⁸",
    ),
    Planet(
      name: "Earth",
      pngImage: "earth.png",
      model3d: "earth.glb",
      title: "Earth: Our Blue Marble",
      about:
          "Earth is the only known planet in the universe that supports life. Its unique combination of factors has created the ideal conditions for the development of complex organisms.",
      distanceFromSunKm: "149,598,026",
      lengthOfDayHours: "23.93",
      orbitalPeriodYears: 1.0,
      radiusKm: "6,371",
      massKg: "5.972 × 10²⁴",
      gravityMs2: 9.81,
      surfaceAreaKm2: "5.10 × 10⁸",
    ),
    Planet(
      name: "Mars",
      pngImage: "mars.png",
      model3d: "mars.glb",
      title: "Mars: The Red Planet",
      about:
          "Mars, often called the Red Planet due to its reddish hue, is a cold, rocky world with a thin atmosphere and evidence of past volcanic activity.",
      distanceFromSunKm: "227,943,824",
      lengthOfDayHours: "24.62",
      orbitalPeriodYears: 1.88,
      radiusKm: "3,389.50",
      massKg: "6.39 × 10²³",
      gravityMs2: 3.71,
      surfaceAreaKm2: "1.45 × 10⁸",
    ),
    Planet(
      name: "Jupiter",
      pngImage: "jupiter.png",
      model3d: "jupiter.glb",
      title: "Jupiter: The Gas Giant",
      about:
          "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium with a massive storm known as the Great Red Spot.",
      distanceFromSunKm: "778,547,669",
      lengthOfDayHours: "9.92",
      orbitalPeriodYears: 11.86,
      radiusKm: "69,911",
      massKg: "1.898 × 10²⁷",
      gravityMs2: 24.79,
      surfaceAreaKm2: "6.21 × 10¹⁵",
    ),
    Planet(
      name: "Saturn",
      pngImage: "saturn.png",
      model3d: "saturn.glb",
      title: "Saturn: The Ringed Planet",
      about:
          "Saturn is best known for its spectacular rings composed of ice particles and rocks. It is a gas giant with many moons, including the atmosphere-rich Titan.",
      distanceFromSunKm: "1,426,666,422",
      lengthOfDayHours: "10.66",
      orbitalPeriodYears: 29.46,
      radiusKm: "58,232",
      massKg: "5.683 × 10²⁶",
      gravityMs2: 10.44,
      surfaceAreaKm2: "4.27 × 10¹⁵",
    ),
    Planet(
      name: "Uranus",
      pngImage: "uranus.png",
      model3d: "uranus.glb",
      title: "Uranus: The Tilted Planet",
      about:
          "Uranus is an ice giant with a unique axial tilt, causing extreme seasons. Its atmosphere of hydrogen, helium, and methane gives it a pale blue color.",
      distanceFromSunKm: "2,870,990,000",
      lengthOfDayHours: "17.24",
      orbitalPeriodYears: 84.01,
      radiusKm: "25,362",
      massKg: "8.681 × 10²⁵",
      gravityMs2: 8.69,
      surfaceAreaKm2: "8.1 × 10¹⁵",
    ),
    Planet(
      name: "Neptune",
      pngImage: "neptune.png",
      model3d: "neptune.glb",
      title: "Neptune: The Distant World",
      about:
          "Neptune is the farthest planet from the Sun and is another ice giant. It has a deeper blue color and several moons, including the retrograde-orbiting Triton.",
      distanceFromSunKm: "4,498,252,900",
      lengthOfDayHours: "16.11",
      orbitalPeriodYears: 164.8,
      radiusKm: "24,622",
      massKg: "1.024 × 10²⁶",
      gravityMs2: 11.15,
      surfaceAreaKm2: "7.65 × 10¹⁵",
    ),
  ];
}
