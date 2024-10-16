class topListWidget {
  topListWidget({required this.title, required this.pic});
  String title, pic;
}

List<topListWidget> topList = [
  topListWidget(pic: 'assets/business.avif', title: 'Business'),
  topListWidget(pic: 'assets/entertaiment.avif', title: 'Entertaiment'),
  topListWidget(pic: 'assets/general.avif', title: 'General'),
  topListWidget(pic: 'assets/health.avif', title: 'Health'),
  topListWidget(pic: 'assets/science.avif', title: 'Science'),
  topListWidget(pic: 'assets/sports.avif', title: 'Sports'),
  topListWidget(pic: 'assets/technology.jpeg', title: 'Technology'),
];
