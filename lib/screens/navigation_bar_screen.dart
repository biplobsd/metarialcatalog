import 'package:flutter/material.dart';

class NavigationBarScreen extends StatefulWidget {
  static const path = '/navigationBarScreen';
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int selected = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(NavigationBarScreen.path),
      ),
      bottomNavigationBar: NavigationBar(
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
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: PageView.builder(
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
    );
  }
}
