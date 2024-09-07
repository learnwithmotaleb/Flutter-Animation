import 'package:flutter/material.dart';

class DecoratedBoxTransitionWidget extends StatefulWidget {
  const DecoratedBoxTransitionWidget({super.key});

  @override
  State<DecoratedBoxTransitionWidget> createState() => _DecoratedBoxTransitionWidgetState();
}

class _DecoratedBoxTransitionWidgetState extends State<DecoratedBoxTransitionWidget> with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
      vsync: this
  )..repeat(reverse: true);

  DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 2,color: Colors.black),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.orange,
          blurRadius: 20.0,
          offset: Offset(0.0, 10.0),
          spreadRadius: 20,

        )
      ]


    ),
      end: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 2,color: Colors.green),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.blue,
              blurRadius: 20.0,
              offset: Offset(0.0, 10.0),
              spreadRadius: 20,

            )
          ]


      )
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBoxTransition"),
        centerTitle: true,
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationTween.animate(_controller),
          child: Container(
            width: 200,
            height: 200,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Icon(Icons.flutter_dash,size: 100,),
              ),
            ),
          )
        ),
      ),

    );
  }
}
