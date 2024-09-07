import 'package:flutter/material.dart';

class SlideTransitionWidget extends StatefulWidget {
  const SlideTransitionWidget({super.key});

  @override
  State<SlideTransitionWidget> createState() => _SlideTransitionWidgetState();
}

class _SlideTransitionWidgetState extends State<SlideTransitionWidget> with TickerProviderStateMixin{
  
  late final AnimationController _controller = AnimationController(vsync: this,
  duration: const Duration(seconds: 2))..repeat(reverse: true);
  
  late final Animation<Offset> _animationOffset = Tween(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0)
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInSine));
  
  
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlideTransitioin"),
        centerTitle: true,
      ),
      
      body: Center(
        child: SlideTransition(
          position: _animationOffset,
          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/f/fc/Bill_Gates_-_2023_-_P062021-967902_%28cropped%29.jpg"),
          
        ),
      ),
    );
  }
}
