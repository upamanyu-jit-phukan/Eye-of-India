import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:eye_of_india/repository/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool isSignUp = false;
  double cardHeight = 399;
  bool showGoogleIcon = false;

  void toggleSignUp() {
    setState(() {
      isSignUp = !isSignUp;
      cardHeight = isSignUp ? 499 : 399; // Adjust height dynamically
    });

    // Delay showing the Google icon by 500 ms for smoother transition
    Future.delayed(const Duration(milliseconds: 5), () {
      setState(() {
        showGoogleIcon = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signup.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 100),
              // Centered Texts
              Center(
                child: Positioned(
                  top: 300,
                  left: 0,
                  right: 0,
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
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              // Blurred Card
              AnimatedContainer(
                duration: Duration(milliseconds: 1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: 303,
                      height: cardHeight,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(38, 255, 255, 255),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: toggleSignUp,
                                child: Uihelper.customText(
                                  text: 'LOGIN',
                                  color: isSignUp
                                      ? const Color(0XFF464646)
                                      : const Color(0XFF000000),
                                  fontweight: isSignUp
                                      ? FontWeight.w200
                                      : FontWeight.w600,
                                  fontsize: 25,
                                  fontfamily: 'LeagueSpartan',
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: toggleSignUp,
                                child: Uihelper.customText(
                                  text: 'SIGN UP',
                                  color: isSignUp
                                      ? const Color(0XFF464646)
                                      : const Color(0XFF000000),
                                  fontweight: isSignUp
                                      ? FontWeight.w600
                                      : FontWeight.w200,
                                  fontsize: 25,
                                  fontfamily: 'LeagueSpartan',
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          // Margin Line
                          Container(
                            width: 276,
                            height: 1,
                            color: const Color.fromRGBO(80, 80, 80, 1),
                          ),

                          const SizedBox(height: 9),

                          if (!isSignUp) ...[
                            buildInputField1('Username'),
                            const SizedBox(height: 15),
                            buildInputField2('Password', 'Forgot Password?'),
                          ],
                          if (isSignUp) ...[
                            buildInputField1('First Name'),
                            const SizedBox(height: 15),
                            buildInputField1('Last Name'),
                            const SizedBox(height: 15),
                            buildInputField1('Email'),
                            const SizedBox(height: 15),
                            buildInputField1('Password'),
                          ],
                          const SizedBox(height: 20),
                          buildButton('Enter'),

                          const SizedBox(height: 20),

                          // Margin Line
                          Container(
                            width: 276,
                            height: 1,
                            color: const Color.fromRGBO(80, 80, 80, 1),
                          ),

                          const SizedBox(height: 9),

                          Uihelper.customText(text: 'Login via', color: Color(0XFF393939), fontweight: FontWeight.w400, fontsize: 15, fontfamily: 'LeagueSpartan'),
                          const SizedBox(height: 5),

                          // Google Login Button with delay
                          AnimatedOpacity(
                            opacity: showGoogleIcon ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 5),
                            child: SizedBox(
                              width: 61,
                              height: 61,
                              child:
                                  Uihelper.customImage(img: 'GoogleIcon.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildInputField1(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Uihelper.customText(
            text: label,
            color: const Color(0XFF393939),
            fontweight: FontWeight.w400,
            fontsize: 15,
            fontfamily: 'LeagueSpartan',
          ),
          Container(
            width: double.infinity,
            height: 37,
            decoration: BoxDecoration(
              color: const Color(0XFFD9D9D9),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(64, 0, 0, 0),
                  blurRadius: 6.0,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInputField2(String label, String label2) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Uihelper.customText(
              text: label,
              color: const Color.fromRGBO(57, 57, 57, 1),
              fontweight: FontWeight.w400,
              fontsize: 15,
              fontfamily: 'LeagueSpartan',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Container(
            width: double.infinity,
            height: 37,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(64, 0, 0, 0),
                  blurRadius: 6.0,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(right: 19),
          child: Align(
            alignment: Alignment.centerRight,
            child: Uihelper.customText(
              text: label2,
              color: const Color.fromRGBO(57, 57, 57, 1),
              fontweight: FontWeight.w400,
              fontsize: 14,
              fontfamily: 'LeagueSpartan',
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Container(
        width: double.infinity,
        height: 37,
        decoration: BoxDecoration(
          color: const Color(0XFFAADBFF),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(64, 0, 0, 0),
              blurRadius: 6.0,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Center(
          child: Uihelper.customText(
            text: text,
            color: const Color(0XFF393939),
            fontweight: FontWeight.w600,
            fontsize: 15,
            fontfamily: 'LeagueSpartan',
          ),
        ),
      ),
    );
  }
}
