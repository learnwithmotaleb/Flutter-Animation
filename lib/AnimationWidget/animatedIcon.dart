import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget> with TickerProviderStateMixin{

  bool _isplay = false;

  late final AnimationController _controller;

  @override
  void initState() {
   _controller = AnimationController(
     duration: const Duration(seconds: 2),
       vsync: this
   );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedIcon"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: (){

            if(_isplay == false){
              _controller.forward();
              _isplay = true;

            }else{
              _controller.reverse();
              _isplay = false;
            }



          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            color: Colors.black,
            size: 50,

          ),
        ),
      ),
    );
  }
}
