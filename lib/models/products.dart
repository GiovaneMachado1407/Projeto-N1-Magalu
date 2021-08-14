class Products {
  final String name;
  final String photo;
  final String extra;
  final String value;
  final String installments;
  bool isFavorite;

  Products({
    required this.name,
    required this.photo,
    required this.extra,
    required this.value,
    required this.installments,
    this.isFavorite = false,
  });
}
