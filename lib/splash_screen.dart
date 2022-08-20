import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        child: const CircularProgressIndicator(
          backgroundColor: Colors.redAccent,
        ),
      ),
    );
  }
}
