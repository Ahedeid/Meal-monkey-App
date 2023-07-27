class PageModel {
  final String? imagePath;

  final String title;

  final String det;

  PageModel({required this.imagePath, required this.title, required this.det});

  static List<PageModel> data = [
    PageModel(
      imagePath: 'assets/images/Find food you love vector.svg',
      title: 'Find food you love',
      det:
          '   Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
    ),
    PageModel(
      imagePath: 'assets/images/Delivery vector.svg',
      title: 'Fast Delivery',
      det:
          'Fast food delivery to your home, office\n                  wherever you are',
    ),
    PageModel(
      imagePath: 'assets/images/Live tracking vector.svg',
      title: 'Live Traching',
      det:
          'Real time tracking of your food on the\n        app once you placed the order',
    )
  ];
}
