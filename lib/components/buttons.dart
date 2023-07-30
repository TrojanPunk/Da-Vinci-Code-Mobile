import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyButton extends StatelessWidget {
  final String iconUrl;
  final void Function()? onPressed;
  const MyButton({
    super.key,
    required this.iconUrl,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size(150, 60),
        backgroundColor: const Color(0xFF22262A),
        side: BorderSide(width: 1.0, color: Color.fromRGBO(49, 55, 61, 0.6)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            iconUrl,
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}

class MyButtonTwo extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const MyButtonTwo({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
        backgroundColor: Colors.transparent,
        side: BorderSide(width: 3.0, color: Color(0xFFFFEB32)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}