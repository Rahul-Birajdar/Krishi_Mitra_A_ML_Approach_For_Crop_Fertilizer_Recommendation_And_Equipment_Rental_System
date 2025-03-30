// equipment items
class Equipment{
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final EquipmentCategory category;

  Equipment({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
  });
}

// Equipment Categories
enum EquipmentCategory{
  tractors,
  harvesters,
  cultivators,
  trailers,
  sprayers,
}