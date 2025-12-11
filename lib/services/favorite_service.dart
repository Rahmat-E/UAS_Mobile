import 'package:shared_preferences/shared_preferences.dart';
import '../models/anime.dart';

class FavoriteService {
  static List<Anime> favorites = [];

  static Future<void> loadFavorites() async {
    final pref = await SharedPreferences.getInstance();
    final raw = pref.getStringList("favorites") ?? [];
    favorites = raw.map((s) => Anime.fromJsonString(s)).toList();
  }

  static Future<void> saveFavorites() async {
    final pref = await SharedPreferences.getInstance();
    final encoded = favorites.map((a) => a.toJsonString()).toList();
    await pref.setStringList("favorites", encoded);
  }

  static bool isFavorite(int id) {
    return favorites.any((a) => a.id == id);
  }

  static Future<void> toggleFavorite(Anime a) async {
    if (isFavorite(a.id)) {
      favorites.removeWhere((x) => x.id == a.id);
    } else {
      favorites.add(a);
    }
    await saveFavorites();
  }
}
