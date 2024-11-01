import 'package:flutter/material.dart';
import 'package:metarialcatalog/go_router.dart';

class HomeScreens extends StatelessWidget {
  static const path = '/';
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material widget catalog'),
      ),
      body: ListView.builder(
        itemCount: routers.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            while (goRouter.canPop()) {
              goRouter.pop();
            }
            goRouter.push(routers[index].path);
          },
          title: Text(
            routers[index].path,
          ),
        ),
      ),
    );
  }
}
