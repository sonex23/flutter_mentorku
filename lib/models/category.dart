class Category {
  final int id;
  final String name;

  Category({required this.id, required this.name});
}

List<Category> categoryList = [
  Category(id: 0, name: 'UI Designer'),
  Category(id: 1, name: 'Frontend Developer'),
  Category(id: 2, name: 'Backend Developer'),
  Category(id: 3, name: 'Mobile Developer'),
];
