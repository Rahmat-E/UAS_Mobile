import 'package:flutter/material.dart';
import '../services/favorite_service.dart';

import 'home_page.dart';
import 'search_page.dart';
import 'season_page.dart';
import 'favorites_page.dart';
import 'profile/profile_page.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int index = 0;

  void openDetail(int id) {
    Navigator.pushNamed(context, "/detail", arguments: id).then((_) {
      setState(() {}); // refresh favorite icon dan halaman favorite
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(onOpenDetail: openDetail),
      SearchPage(onOpenDetail: openDetail),
      SeasonPage(onOpenDetail: openDetail),

      FavoritesPage(
        favorites: FavoriteService.favorites,
        onOpenDetail: openDetail,
      ),

      const ProfilePage(),
    ];

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i) => setState(() => index = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: "Season"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Favorite"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
