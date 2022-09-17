import 'package:book_club_app/screens/login/localwidgets/loginForm.dart';
import 'package:flutter/material.dart';

class OurLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Image.asset("assets/book_logo.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              OurLoginForm(),
            ],
          ))
        ],
      ),
    );
  }
}
