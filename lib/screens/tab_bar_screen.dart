import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  static const path = '/tabBar';
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(path),
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('Cat'),
            ),
            Tab(
              child: Text('Dog'),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Image.network(
                'https://images.pexels.com/photos/2071882/pexels-photo-2071882.jpeg?cs=srgb&dl=pexels-wojciech-kumpicki-1084687-2071882.jpg&fm=jpg'),
            Image.network(
                'https://thumbs.dreamstime.com/b/beautiful-happy-reddish-havanese-puppy-dog-sitting-frontal-looking-camera-isolated-white-background-46868560.jpg'),
          ],
        ),
      ),
    );
  }
}
