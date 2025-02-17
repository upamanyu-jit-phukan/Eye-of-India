import 'dart:ui';
import 'package:eye_of_india/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signup.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Centered Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Uihelper.customText(
                  text: 'Welcome to',
                  color: Colors.black,
                  fontweight: FontWeight.w600,
                  fontsize: 35,
                  fontfamily: 'LeagueSpartan',
                  height: 1.1,
                ),
                Uihelper.customText(
                  text: 'Eye of',
                  color: Colors.black,
                  fontweight: FontWeight.w700,
                  fontsize: 65,
                  fontfamily: 'LeagueSpartan',
                  height: 1.1,
                ),
                Uihelper.customText(
                  text: 'India',
                  color: Colors.black,
                  fontweight: FontWeight.w700,
                  fontsize: 77,
                  fontfamily: 'LeagueSpartan',
                  height: 1.1,
                ),

                const SizedBox(height: 20), // Spacing before the card

                // Blurred Card
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: 303,
                      height: 399,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            38, 255, 255, 255), // Equivalent to 0.15 opacity
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(
                              51, 255, 255, 255), // Equivalent to 0.2 opacity
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),

                          // Login/Signup Title
                          Center(
                            child: Uihelper.customText(
                              text: 'LOGIN / SIGN UP',
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontweight: FontWeight.w600,
                              fontsize: 25,
                              fontfamily: 'League Spartan',
                            ),
                          ),
                          SizedBox(height: 20),

                          // Margin Line
                          Container(
                            width: 276,
                            height: 1,
                            color: Color.fromRGBO(80, 80, 80, 1),
                          ),

                          const SizedBox(height: 9),

                          // Username Label
                          Padding(
                            padding: const EdgeInsets.only(left: 19),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Uihelper.customText(
                                  text: 'Username',
                                  color: Color.fromRGBO(57, 57, 57, 1),
                                  fontweight: FontWeight.w400,
                                  fontsize: 12),
                            ),
                          ),

                          // SizedBox(height: 5),

                          // Username Input Field
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 19),
                            child: Container(
                              width: double.infinity,
                              height: 37,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(64, 0, 0,
                                        0), // Equivalent to 0.25 opacity
                                    blurRadius: 6.0,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),

                          // Password Label
                          Padding(
                            padding: const EdgeInsets.only(left: 19),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Uihelper.customText(
                                  text: 'Password',
                                  color: Color.fromRGBO(57, 57, 57, 1),
                                  fontweight: FontWeight.w400,
                                  fontsize: 12),
                            ),
                          ),

                          // SizedBox(height: 5),

                          // Password Input Field
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 19),
                            child: Container(
                              width: double.infinity,
                              height: 37,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(217, 217, 217, 1),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(64, 0, 0,
                                        0), // Equivalent to 0.25 opacity
                                    blurRadius: 6.0,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          // Forgot Password Label
                          Padding(
                            padding: const EdgeInsets.only(right: 19),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Uihelper.customText(
                                  text: 'Forgot Password?',
                                  color: Color.fromRGBO(57, 57, 57, 1),
                                  fontweight: FontWeight.w400,
                                  fontsize: 11),
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Enter Field
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 19),
                            child: Container(
                              width: double.infinity,
                              height: 37,
                              decoration: BoxDecoration(
                                color: Color(0XFFAADBFF),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(64, 0, 0,
                                        0), // Equivalent to 0.25 opacity
                                    blurRadius: 6.0,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Uihelper.customText(
                                  text: 'Enter',
                                  color: Color(0XFF393939),
                                  fontweight: FontWeight.w600,
                                  fontsize: 15,
                                  fontfamily: 'LeagueSpartan',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),

                          // Margin Line
                          Container(
                            width: 276,
                            height: 1,
                            color: Color.fromRGBO(80, 80, 80, 1),
                          ),

                          const SizedBox(height: 9),

                          // Column for "Login via" and Google
                          Column(
                            children: [
                              Uihelper.customText(
                                text: 'Login via',
                                color: Color(0XFF393939),
                                fontweight: FontWeight.w400,
                                fontsize: 12,
                              ),
                              const SizedBox(height: 6),

                              // Google Login Button
                              SizedBox(
                                width: 61,
                                height: 61,
                                child: Uihelper.customImage(img: 'GoogleIcon.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
