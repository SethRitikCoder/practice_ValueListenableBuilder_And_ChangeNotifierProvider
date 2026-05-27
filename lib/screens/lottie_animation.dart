import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLottieAnimation extends StatefulWidget {
  const MyLottieAnimation({super.key});

  @override
  State<MyLottieAnimation> createState() => _MyLottieAnimationState();
}

class _MyLottieAnimationState extends State<MyLottieAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie Animation")),
      body: Center(
        child: Column(
          children: [
            Lottie.asset(
              "assets/animation/f75b067d-eaa4-4223-b02f-533da9ffee20.json",
              animate: true,
              repeat: true,
              width: 200,
              height: 200,
              backgroundLoading: true,
              reverse: false,
            ),
            SizedBox(
              width: 100,
              height: 100,

              child: Lottie.asset(
                "assets/animation/loading.json",
                animate: true,
                repeat: true,
              ),
            ),
            Lottie.asset(
              "assets/animation/74158ba8-117d-11ee-813e-d32849ed9cda.json",
              animate: true,
              repeat: true,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
