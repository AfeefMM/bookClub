import 'package:flutter/material.dart';

import 'localwidgets/signUpForm.dart';

class OurSignUp extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              OurSignUpForm(),
            ],
          ))
        ],
      ),
    );
  }
}
