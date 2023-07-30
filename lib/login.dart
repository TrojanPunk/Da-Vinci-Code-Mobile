import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key, required this.title});

  final String title;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _signInGlobalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordSee = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              width: 80,
              height: 80,
            ),

            SvgPicture.asset(
              'assets/images/LogoShort.svg',
              width: 165,
              height: 52,
            ),

            const SizedBox(
              width: 80,
              height: 20,
            ),

            const Center(
              child: Text(
                "TAP INTO THE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF)
                ),
              ),
            ),

            const Center(
              child: Text(
                "INTERVIEW",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                ),
              ),
            ),

            const Center(
              child: Text(
                "ALGORITHM",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFA4A4A4)
                ),
              ),
            ),

            Image.asset(
              'assets/images/algorithms.png',
              width: 321,
              height: 276,
            ),

            const SizedBox(height: 0),

            const Center(
              child: Text(
                "Sign In using any one of the following: ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFA4A4A4)
                ),
              ),
            ),

            const SizedBox(
              width: 80,
              height: 20,
            ),

            Row(
              children: const [
                MyButton(
                  iconUrl: 'assets/images/google.svg',
                ),
                SizedBox(width: 20),
                MyButton(
                  iconUrl: 'assets/images/meta.svg',
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Divider(
              color: Color.fromRGBO(49, 55, 61, 0.80),
              height: 25,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),

            const Center(
              child: Text(
                "By Signing In I accept the Terms & Conditions and Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFA4A4A4)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}