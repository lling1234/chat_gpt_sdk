import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:openai_app/constants/theme/dimen.dart';
import 'package:openai_app/screen/preview/preview_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void countDownTime({required BuildContext context}){
    Future.delayed(const Duration(seconds: 2),(){
      ///navigate to preview screen
      Navigator.push(context, MaterialPageRoute(builder: (context) => const PreviewScreen()));
    });
  }

  @override
  void initState() {
    countDownTime(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Center(
          child: buildPreviewAnimation(size),
        )
      ),
    );
  }

  Widget buildPreviewAnimation(Size size) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/animation/robot_loading_screen.json',
                width: 200,
                height: 200,
                fit: BoxFit.fill),
            SizedBox(height: size.height * .3)
          ],
        );
  }
}
