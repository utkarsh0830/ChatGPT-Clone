import 'package:chatgpt_clone/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: SvgPicture.asset("assets/chatgpt.svg",
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20,),
            Text("Welcome to ChatGPT",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.pinkBgColor
            ),
            ),
            Text("The dialogue format of chatGPT",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.pinkBgColor
              ),)
          ],
        ),
      ),
    );
  }
}
