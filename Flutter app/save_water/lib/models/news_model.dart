class NewsModel {
  final String title, image, description, date;
  bool isBookmared;

  NewsModel({
    required this.title,
    required this.image,
    required this.description,
    required this.date,
    this.isBookmared = false,
  });

  static List<NewsModel> newsList = [
    NewsModel(
      title: "Animal Scientist Discovers:",
      image: "assets/images/1e6ecb002efae65fff56e8d9639fa5a72bc89387.png",
      description:
          "Researchers from the University of All Knowing have discovered a new way to breed farm animals.",
      date: "Thur 09 2022",
      isBookmared: true,
    ),
    NewsModel(
      title: "Animal Scientist Discovers:",
      image: "assets/images/4708c70290a8d5584047cf8f299d61256ff43478.png",
      description:
          "Researchers from the University of All Knowing have discovered a new way to breed farm animals.",
      date: "Thur 09 2022",
    ),
    NewsModel(
      title: "Animal Scientist Discovers:",
      image: "assets/images/01abefcd6c435efc094cd2c45f1a8618a25f1bbd.png",
      description:
          "Researchers from the University of All Knowing have discovered a new way to breed farm animals.",
      date: "Thur 09 2022",
    ),
    NewsModel(
      title: "Animal Scientist Discovers:",
      image: "assets/images/7026836b8e24d3b79b97718737e03795fdffde28.png",
      description:
          "Researchers from the University of All Knowing have discovered a new way to breed farm animals.",
      date: "Thur 09 2022",
    ),
  ];
}
