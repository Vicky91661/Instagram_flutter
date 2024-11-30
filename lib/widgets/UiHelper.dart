import 'package:flutter/material.dart';

class UiHelper {
  static customTextField(
      {required TextEditingController controller,
      required String text,
      required bool toHide,
      required TextInputType textInputType}) {
    return Container(
      width: 343,
      height: 44,
      decoration: BoxDecoration(
          color: const Color(0XFF121212),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade700)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          keyboardType: textInputType,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  static customImage({required String imageUrl}) {
    return Image.asset("assets/images/$imageUrl");
  }

  static customTextButton(
      {required VoidCallback callback, required String text}) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0XFF3797EF),
          fontSize: 14,
        ),
      ),
    );
  }

  static customButton({required VoidCallback callback, required String text}) {
    return SizedBox(
      width: 343,
      height: 44,
      child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
            backgroundColor:const Color(0XFF3797EF),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          )),
    );
  }
}
