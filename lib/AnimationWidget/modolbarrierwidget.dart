import 'package:flutter/material.dart';
import 'dart:async';

class ModolBarrierWidget extends StatefulWidget {
  const ModolBarrierWidget({super.key});

  @override
  State<ModolBarrierWidget> createState() => _ModolBarrierWidgetState();
}

class _ModolBarrierWidgetState extends State<ModolBarrierWidget> with SingleTickerProviderStateMixin {

  bool _isPressed = false;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  late Widget _modalBarrierAnimation;



  @override
  void initState() {

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
        vsync: this
    );

    ColorTween _colorTween = ColorTween(
      begin: Colors.blue.withOpacity(1),
      end: Colors.orangeAccent.withOpacity(0.5)
    );

    _colorAnimation = _colorTween.animate(_animationController);

    _modalBarrierAnimation = AnimatedModalBarrier(
        color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modolbarrier"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(
                width: 200,
                height: 120,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [

                    ElevatedButton(
                        onPressed: (){

                          setState(() {
                            _isPressed = true;

                          });
                          _animationController.reset();
                          _animationController.forward();

                          Future.delayed(const Duration(seconds: 2),(){
                            setState(() {
                              _isPressed = false;
                            });
                          });



                        },
                        child: Text("Click Here"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey
                      ),
                    ),
                    if(_isPressed)_modalBarrierAnimation


                  ],
                ),
              )

            ],

          ),
        ) ,
      ),

    );
  }
}
