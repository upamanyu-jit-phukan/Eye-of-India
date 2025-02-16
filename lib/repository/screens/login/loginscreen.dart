import 'dart:ui';

import 'package:eye_of_india/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signup.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 33),
            SizedBox(
              width: 303,
              height: 173,
              child: Center(
                child: Column(
                  children: [
                    Uihelper.customText(
                      text: 'Welcome to',
                      color: Color(0XFF000000),
                      fontweight: FontWeight.w600,
                      fontsize: 35,
                      fontfamily: 'LeagueSpartan',
                      height: 1.1,
                    ),
                    Uihelper.customText(
                      text: 'Eye of',
                      color: Color(0XFF000000),
                      fontweight: FontWeight.w700,
                      fontsize: 65,
                      fontfamily: 'LeagueSpartan',
                      height: 1.1,
                    ),
                    Uihelper.customText(
                      text: 'India',
                      color: Color(0XFF000000),
                      fontweight: FontWeight.w700,
                      fontsize: 77,
                      fontfamily: 'LeagueSpartan',
                      height: 1.1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 379,
              width: 303,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(217, 217, 217, 0.1),
                    ),
                    child: Center(
                      child: Text('Login'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
