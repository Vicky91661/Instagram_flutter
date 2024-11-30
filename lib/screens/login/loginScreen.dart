import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/bottomNav/BottomNavScreen.dart';
import 'package:instagram_clone/screens/signup/SignUp.dart';
import 'package:instagram_clone/widgets/UiHelper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void SignupHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imageUrl: "Instagram.png"),
            const SizedBox(
              height: 20,
            ),
            UiHelper.customTextField(
              controller: emailController,
              text: "Email",
              toHide: false,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customTextField(
              controller: passwordController,
              text: "Password",
              toHide: true,
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                alignment: Alignment.bottomRight,
                child: UiHelper.customTextButton(
                  callback: SignupHandler,
                  text: "Forgot Password?",
                ),
              ),
            ),
            UiHelper.customButton(
                callback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavScreen()),
                  );
                },
                text: "Login"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.facebook,
                  color: Color(0XFF3797EF),
                  size: 20.0,
                ),
                UiHelper.customTextButton(
                    callback: () {}, text: "Login with Facebook")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                UiHelper.customTextButton(
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    text: "Sign Up")
              ],
            )
          ],
        ),
      ),
    );
  }
}
