import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class ProfileView extends StatelessWidget {
  final authCtrl = Get.find<AuthController>();

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1544005313-94ddf0286df2',
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Logged in as: ${authCtrl.firebaseUser.value?.email ?? 'Unknown'}",
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => authCtrl.signOut(),
              child: Text("Sign Out"),
            ),
          ],
        ),
      ),
    );
  }
}
