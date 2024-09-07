import 'package:flutter/material.dart';

class RotationTrasitionWidgt extends StatefulWidget {
  const RotationTrasitionWidgt({super.key});

  @override
  State<RotationTrasitionWidgt> createState() => _RotationTrasitionWidgtState();
}

class _RotationTrasitionWidgtState extends State<RotationTrasitionWidgt> with TickerProviderStateMixin {


  late final AnimationController _controller = AnimationController(vsync: this,
  duration: const Duration(seconds: 2))..repeat(reverse:  true);


  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RotationTransition"),
        centerTitle: true,
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Icon(Icons.flutter_dash,size: 100,),
        ),
      ),
    );
  }
}
