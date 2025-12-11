import 'package:flutter/material.dart';
import 'services/favorite_service.dart';
import 'pages/root_screen.dart';
import 'pages/detail_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FavoriteService.loadFavorites();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      home: const RootScreen(),

      routes: {
        "/detail": (context) {
          final id = ModalRoute.of(context)!.settings.arguments as int;
          return DetailPage(animeId: id);
        },
      },
    );
  }
}
