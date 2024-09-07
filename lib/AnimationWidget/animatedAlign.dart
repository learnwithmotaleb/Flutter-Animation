import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedAlignWiget extends StatefulWidget {
  const AnimatedAlignWiget({super.key});

  @override
  State<AnimatedAlignWiget> createState() => _AnimatedAlignWigetState();
}

class _AnimatedAlignWigetState extends State<AnimatedAlignWiget>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(
          duration: const Duration(seconds: 10),
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
          child: FlutterLogo(size: 100,),
          builder: (BuildContext context, Widget? child){
            return Transform.rotate(
                angle: _controller.value * 2.0 * math.pi,
              child: child,

            );
          },
        ),
      ),

    );
  }
}
