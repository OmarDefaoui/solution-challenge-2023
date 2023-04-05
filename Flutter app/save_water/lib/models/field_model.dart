class FieldModel {
  final String title, image, description, status, waterStatus;
  bool isBookmared, isWaterOn;

  FieldModel({
    required this.title,
    required this.image,
    required this.description,
    required this.status,
    required this.waterStatus,
    this.isBookmared = false,
    this.isWaterOn = false,
  });

  static List<FieldModel> fieldsList = [
    FieldModel(
      image: "assets/images/2d4c69e18bade87b73941452b464ca9e0bc3c2f0.png",
      title: "Tomatoes",
      description: "A125/02",
      status: "Mid-Healthy",
      waterStatus: "Water Status: Enough",
      isBookmared: true,
      isWaterOn: true,
    ),
    FieldModel(
      image: "assets/images/7e89537dae64fa35bee10338878667a839e9d6af.png",
      title: "Cucumber",
      description: "A125/03",
      status: "Healthy",
      waterStatus: "Water Status: Medium",
    ),
    FieldModel(
      image: "assets/images/eb965c0ddb266387f468dbe7ec2d4159fa002ff5.png",
      title: "Potatos",
      description: "A125/04",
      status: "Healthy",
      waterStatus: "Water Status: Enough",
    ),
    FieldModel(
      image: "assets/images/cd4548b9ff5dd6daa2f903f2bbfe422f8955daa3.png",
      title: "Oranges",
      description: "A125/05",
      status: "Healthy",
      waterStatus: "Water Status: Medium",
      isBookmared: true,
      isWaterOn: true,
    ),
  ];
}
