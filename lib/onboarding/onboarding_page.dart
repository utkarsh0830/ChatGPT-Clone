import 'package:chatgpt_clone/chat/ChatPage.dart';
import 'package:chatgpt_clone/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenBgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
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
              SizedBox(height: 10,),
              Text("The dialogue format of chatGPT",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.pinkBgColor
                ),
              ),
              Spacer(),
              SizedBox(
                height: 52,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      side: BorderSide(color: Colors.purple.shade200)
                    ))
                  ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Chatpage()));
                    }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Try ChatGPT",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: AppColors.pinkBgColor
                      ),),
                    const SizedBox(height: 10,),
                    Icon(Icons.arrow_forward,
                    color: AppColors.pinkBgColor,)
                  ],
                )),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
