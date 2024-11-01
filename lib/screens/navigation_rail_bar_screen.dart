import 'package:flutter/material.dart';

class NavigationRailBarScreen extends StatefulWidget {
  static const path = '/navigationBarRailScreen';
  const NavigationRailBarScreen({super.key});

  @override
  State<NavigationRailBarScreen> createState() =>
      _NavigationRailBarScreenState();
}

class _NavigationRailBarScreenState extends State<NavigationRailBarScreen> {
  int selected = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(NavigationRailBarScreen.path),
      ),
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (value) => setState(() {
              selected = value;
              pageController.animateToPage(
                value,
                duration: const Duration(milliseconds: 500),
                curve: Curves.bounceInOut,
              );
            }),
            selectedIndex: selected,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: 2,
              itemBuilder: (context, index) => PageView(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.purpleAccent[index * 200],
                    child: Center(
                      child: Text('Page $index'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
