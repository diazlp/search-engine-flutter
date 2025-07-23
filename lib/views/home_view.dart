import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://plus.unsplash.com/premium_photo-1681487814165-018814e29155?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed('/search'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.search, size: 40), Text("Search")],
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/profile'),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.person, size: 40), Text("Profile")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
