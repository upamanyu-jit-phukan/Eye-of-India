import 'package:eye_of_india/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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

          // Centered Content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTitle(),
                const SizedBox(height: 20),
                _buildSignupForm(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Uihelper.customText(
          text: 'Join',
          color: Colors.black,
          fontweight: FontWeight.w600,
          fontsize: 35,
          fontfamily: 'LeagueSpartan',
          height: 1.1,
        ),
        Uihelper.customText(
          text: 'Eye of India',
          color: Colors.black,
          fontweight: FontWeight.w700,
          fontsize: 65,
          fontfamily: 'LeagueSpartan',
          height: 1.1,
        ),
      ],
    );
  }

  Widget _buildSignupForm(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 303,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(38, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromARGB(51, 255, 255, 255)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Uihelper.customText(
              text: 'SIGN UP',
              color: Colors.black,
              fontweight: FontWeight.w600,
              fontsize: 25,
              fontfamily: 'League Spartan',
            ),
            const SizedBox(height: 15),
            _buildTextField('First Name'),
            const SizedBox(height: 15),
            _buildTextField('Last Name'),
            const SizedBox(height: 15),
            _buildTextField('Email'),
            const SizedBox(height: 15),
            _buildTextField('Password', obscureText: true),
            const SizedBox(height: 20),
            _buildActionButton('Sign Up'),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Uihelper.customText(
                text: "Already have an account? Login",
                color: Colors.blue,
                fontweight: FontWeight.w500,
                fontsize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Uihelper.customText(
          text: label,
          color: Colors.black,
          fontweight: FontWeight.w400,
          fontsize: 12,
        ),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          height: 37,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(String text) {
    return Container(
      width: double.infinity,
      height: 37,
      decoration: BoxDecoration(
        color: const Color(0XFFAADBFF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Uihelper.customText(
          text: text,
          color: Colors.black,
          fontweight: FontWeight.w600,
          fontsize: 15,
          fontfamily: 'LeagueSpartan',
        ),
      ),
    );
  }
}