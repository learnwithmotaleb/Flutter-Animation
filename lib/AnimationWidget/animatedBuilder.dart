import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderwidget extends StatefulWidget {
  const AnimatedBuilderwidget({super.key});

  @override
  State<AnimatedBuilderwidget> createState() => _AnimatedBuilderwidgetState();
}

class _AnimatedBuilderwidgetState extends State<AnimatedBuilderwidget> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(
    duration:Duration(seconds: 10),
      vsync: this
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("AnimatedBuilder"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {

            return Transform.rotate(
                angle: _controller.value*2.0*math.pi,
              child: child,

            );

          },
          child: FlutterLogo(size: 100,),

        ),
      ),

    );
  }
}
