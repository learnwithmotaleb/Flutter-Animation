import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {

  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedRotation"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedRotation(
                  turns: turns,
                  duration: const Duration(seconds: 1),
                child: Icon(Icons.flutter_dash,size: 100,),
                curve: Curves.easeInOut,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    setState(
                            ()=> turns += 1/4
                    );
                  },
                  child: Text("Rotation")
              )
            ],
          ),
        ),
      ),
    );
  }
}
