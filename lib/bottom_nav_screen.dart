import 'package:flutter/material.dart';
import 'package:food_recipe_app/screens/favourite_screen.dart';
import 'package:food_recipe_app/screens/home_screen.dart';
import 'package:food_recipe_app/screens/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  final int pageIndex;
  final bool fromSplash;
  const BottomNavScreen(
      {super.key, required this.pageIndex, this.fromSplash = false});

  @override
  BottomNavScreenState createState() => BottomNavScreenState();
}

class BottomNavScreenState extends State<BottomNavScreen> {
  PageController? _pageController;
  int _pageIndex = 0;
  late List<Widget> _screens;
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();
  late bool _isLogin;
  bool active = false;

  @override
  void initState() {
    super.initState();
    _pageIndex = widget.pageIndex;

    _pageController = PageController(initialPage: widget.pageIndex);

    _screens = [
      const HomeScreen(),
      const FavouriteScreen(),
      const ProfileScreen(),
    ];

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: const Color(0xFF7F8184),
        unselectedLabelStyle: const TextStyle(fontSize: 8),
        selectedLabelStyle: const TextStyle(fontSize: 10),
        showUnselectedLabels: true,
        items: [
          _navigationBarItem(
            iconPath: Icons.home_outlined,
            label: "Home",
          ),
          _navigationBarItem(
            iconPath: Icons.favorite_outlined,
            label: "Favorite",
          ),
          _navigationBarItem(
            iconPath: Icons.person_outlined,
            label: "About Me",
          ),
        ],
        onTap: (index) {
          _setPage(index);
        },
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _screens.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _screens[index];
        },
      ),
    );
  }

  void _setPage(int pageIndex) {
    setState(() {
      _pageController!.jumpToPage(pageIndex);
      _pageIndex = pageIndex;
    });
  }
}

BottomNavigationBarItem _navigationBarItem({
  required IconData iconPath,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: Column(
      children: [
        Icon(iconPath),
        const SizedBox(
          height: 6,
        )
      ],
    ),
    activeIcon: Icon(
      iconPath,
    ),
    label: label,
  );
}
