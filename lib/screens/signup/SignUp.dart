import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/loginScreen.dart';
import 'package:instagram_clone/widgets/UiHelper.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();



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
              height: 10,
            ),
            UiHelper.customTextField(
              controller: passwordController,
              text: "Full Name",
              toHide: false,
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),

            UiHelper.customButton(callback: () {}, text: "Sign Up"),
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
                    callback: () {}, text: "Signup with Facebook")
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
                  "Already have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                UiHelper.customTextButton(callback: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context)=>const Loginscreen())
                  );
                }, text: "Sign in")
              ],
            )
          ],
        ),
      ),
    );;
  }
}
