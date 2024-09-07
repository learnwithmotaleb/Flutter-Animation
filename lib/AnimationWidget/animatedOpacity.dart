import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {

  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
              curve: Curves.easeInSine,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.orangeAccent,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){

                  setState(
                          ()=> opacityLevel = opacityLevel == 0 ? 1.0 : 0.0

                  );


                }
                , child: Text("Change Opacity"))





          ],
        ),
      ),
    );
  }
}
