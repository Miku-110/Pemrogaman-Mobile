import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_1/app/modules/Login/controllers/login_controller.dart';


class LoginView extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => controller.username.value = value,
              decoration: InputDecoration(labelText: 'NIM'),
            ),
            TextField(
              onChanged: (value) => controller.password.value = value,
              decoration: InputDecoration(labelText: 'PIC'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.login(),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
