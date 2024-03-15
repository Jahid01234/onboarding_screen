import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'HomePage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(

      pages: [

          PageViewModel(
            title: "Title of blue page",
            body: "Welcome to the app! This is a description on a page with a blue background.",
            image: Center(
              child: Image.asset("assets/images/as.jpg",height: 400,),
            ),

          ),

        PageViewModel(
          title: "Title of blue page",
          body: "Welcome to the app! This is a description on a page with a blue background.",
          image: Center(
            child: Image.asset("assets/images/as.jpg",height: 400,),
          ),

        ),

        PageViewModel(
          title: "Title of blue page",
          body: "Welcome to the app! This is a description on a page with a blue background.",
          image: Center(
            child: Image.asset("assets/images/as.jpg",height: 400,),
          ),

        )


      ],



      onDone: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },
      done: Text ("Done"),
      showSkipButton: true,

      skip: Text("Skip"),
      next: Text("Next"),


    );
  }
}


