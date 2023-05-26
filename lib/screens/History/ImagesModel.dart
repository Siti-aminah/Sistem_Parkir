// ignore_for_file: file_names, non_constant_identifier_names

class Images {
  final int id;
  final String name;
  final String plat;
  final String created_at;

  const Images({
    required this.id,
    required this.name,
    required this.plat,
    required this.created_at,
  });

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      id: json['id'],
      name: json['name'],
      plat: json['plat'],
      created_at: json['created_at'],
    );
  }
}
