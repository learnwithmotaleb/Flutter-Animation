import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() => _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState extends State<AnimatedDefaultTextStyleWidget> {

  double _fontSize = 20;
  Color _color = Colors.blue;
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedDefaultTextStyle"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Center(child: Text("Flutter")),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold
              ),

            ),

          ),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            setState(() {
              _fontSize = _bool? 40 : 20;
              _color = _bool? Colors.black : Colors.orange;
              _bool = !_bool;





            });


          }, child: Text("Change Style"))

        ],
      ),
    );
  }
}
