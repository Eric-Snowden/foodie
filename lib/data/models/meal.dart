class Meal {
  const Meal({
    required this.id,
    required this.price,
    required this.image,
    required this.name,
    required this.subName,
  });
  final int id;
  final double price;
  final String name;
  final String subName;
  final String image;
}
