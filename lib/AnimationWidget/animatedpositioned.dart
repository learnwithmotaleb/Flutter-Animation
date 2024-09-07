import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key});

  @override
  State<AnimatedPositionedWidget> createState() => _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {


  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPositioned"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 400,
          child: Stack(

            children: [
              AnimatedPositioned(
                width: selected ? 200 : 50,
                height: selected ? 50 : 200,
                top: selected ? 50 : 200,


                  child:GestureDetector(
                    onTap: (){

                      setState(() {
                        selected = !selected;
                      });

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black
                      ),
                    ),
                  ),
                  duration: const Duration(seconds: 2)
              )

            ],
          ),
        ),
      ),
    );
  }
}
