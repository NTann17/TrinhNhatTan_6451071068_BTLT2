class Category {

  String title;
  List<String> items;
  bool isExpanded;

  Category({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });

}