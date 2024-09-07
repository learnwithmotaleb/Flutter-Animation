import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({super.key});

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {

  double _size = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSize"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _size = _size == 200 ? 50 : 200;
            });
          },
          child: AnimatedSize(
            duration: const Duration(seconds: 1),
            child: FlutterLogo(size: _size,),
            curve: Curves.easeIn,
          ),
        ),
      ),
    );
  }
}
