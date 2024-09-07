import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimtion extends StatefulWidget {
  const LottieAnimtion({super.key});

  @override
  State<LottieAnimtion> createState() => _LottieAnimtionState();
}

class _LottieAnimtionState extends State<LottieAnimtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Lottie Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie2/Animation _1722075199653.json",width: 200,height: 200),
            Text("Animation 1"),
            SizedBox(height: 30,),
            Lottie.asset("assets/lottie/Animation _1717955797236.json",width: 200,height: 200),
            Text("Animation 2"),
          ],

        ),
      ),

    );
  }
}
