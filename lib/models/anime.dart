import 'dart:convert';

class Anime {
  final int id;
  final String title;
  final String? image;
  final double? mean;
  final int? year;

  Anime({
    required this.id,
    required this.title,
    this.image,
    this.mean,
    this.year,
  });

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      mean: (json["mean"] as num?)?.toDouble(),
      year: json["year"],
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "image": image,
    "mean": mean,
    "year": year,
  };

  // Untuk SharedPreferences
  String toJsonString() => jsonEncode(toJson());

  factory Anime.fromJsonString(String s) {
    return Anime.fromJson(jsonDecode(s));
  }
}
