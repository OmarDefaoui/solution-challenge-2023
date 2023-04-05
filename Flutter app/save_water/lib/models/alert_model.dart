class AlertModel {
  final String title, image, description, date;
  bool isBookmared;

  AlertModel({
    required this.title,
    required this.image,
    required this.description,
    required this.date,
    this.isBookmared = false,
  });

  static List<AlertModel> alertsList = [
    AlertModel(
      title: "Water alert",
      image: "assets/images/1e6ecb002efae65fff56e8d9639fa5a72bc89387.png",
      description: "The zone A202 has enoght water,  consider closing water",
      date: "Thur 09 2022",
      isBookmared: true,
    ),
    AlertModel(
      title: "Sick plant",
      image: "assets/images/4708c70290a8d5584047cf8f299d61256ff43478.png",
      description:
          "Sick plant detected on zone A203, click to see more details",
      date: "Thur 09 2022",
    ),
  ];
}
