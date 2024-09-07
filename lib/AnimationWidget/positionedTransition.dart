import 'package:flutter/material.dart';

class PositionedTransitionWidget extends StatefulWidget {
  const PositionedTransitionWidget({super.key});

  @override
  State<PositionedTransitionWidget> createState() => _PositionedTransitionWidgetState();
}

class _PositionedTransitionWidgetState extends State<PositionedTransitionWidget> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(vsync: this,duration: const Duration(seconds: 2))..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInSine);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    const double smallLogo = 100;
    const double bigLogo = 200;

    return Scaffold(
      appBar: AppBar(
        title: Text("PositionedTransition"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

          final Size beggest = constraints.biggest;

          return Stack(
            children: <Widget>[

              PositionedTransition(

                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(0, 0, smallLogo, smallLogo),

                        beggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(beggest.width - bigLogo, beggest.height -bigLogo, bigLogo, bigLogo),
                        beggest),

                  ).animate(_animation),

                  child: Center(
                    child: Icon(
                      Icons.flutter_dash,
                      size: 100,
                    ),
                  )
              )

            ],
          );



        },

      ),
    );
  }
}
