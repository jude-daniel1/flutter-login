import 'package:flutter/material.dart';
import 'package:flutter_login_authentication/auth_controller.dart';

// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Container(
            alignment: Alignment.bottomCenter,
            width: width,
            height: height * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/signup.png"), fit: BoxFit.cover),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image:
                      DecorationImage(image: AssetImage("img/profile1.png"))),
            )),
        const SizedBox(
          height: 50,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          width: width,
          child: Column(
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                email,
                style: const TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.2,
        ),
        Center(
            child: InkWell(
          onTap: () => AuthController.authController.logOut(),
          child: Container(
            alignment: Alignment.center,
            width: width * 0.5,
            height: 50,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: const Text(
              "Sign out",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        )),
      ]),
    );
  }
}
