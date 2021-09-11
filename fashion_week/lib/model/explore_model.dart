class Explore {
  String title;
  bool isSelect;

  Explore({required this.title, required this.isSelect});
}

List<Explore> exploreListData = [
  Explore(title: "Recommended", isSelect: true),
  Explore(title: "New Models", isSelect: false),
  Explore(title: "2020 Show", isSelect: false),
];
