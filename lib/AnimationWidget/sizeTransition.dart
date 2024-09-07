
import 'package:flutter/material.dart';

class SizeTransionWidget extends StatefulWidget {
  const SizeTransionWidget({super.key});

  @override
  State<SizeTransionWidget> createState() => _SizeTransionWidgetState();
}

class _SizeTransionWidgetState extends State<SizeTransionWidget> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(

      vsync: this,
    duration: const Duration(seconds: 2),

  )..repeat(reverse: true);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizeTransition"),
        centerTitle:true,
      ),
      body: Center(
        child: SizeTransition(
          sizeFactor: _animation,
          axis: Axis.horizontal,
          axisAlignment: 2,
          fixedCrossAxisSizeFactor: 2,
          child: FlutterLogo(
            size: 50,
          ),

        ),
      ),
    );
  }
}
