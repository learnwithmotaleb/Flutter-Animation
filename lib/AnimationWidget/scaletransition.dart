

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleTransitionWidget extends StatefulWidget {
  const ScaleTransitionWidget({super.key});

  @override
  State<ScaleTransitionWidget> createState() => _ScaleTransitionWidgetState();
}

class _ScaleTransitionWidgetState extends State<ScaleTransitionWidget> with TickerProviderStateMixin {


  late final AnimationController _controller = AnimationController(
      vsync: this,
    duration: const Duration(seconds: 10),


  )..repeat(reverse: true);


 late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInSine);


 @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("ScaleTransition"),
        centerTitle: true,
      ),

      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Icon(Icons.flutter_dash,size: 300,),
        ),
      ),

    );
  }
}
