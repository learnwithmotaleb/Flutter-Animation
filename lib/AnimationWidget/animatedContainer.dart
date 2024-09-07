import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
        centerTitle: true,
      ),
      body:Center(
        child: InkWell(
          onTap: (){
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 5),
            width: selected? 200.0 : 100.0,
            height: selected? 100.0 : 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: selected ? Colors.orange : Colors.blue,
            ),
            curve: Curves.fastOutSlowIn,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlutterLogo(
                size: 50,
              ),
            ),
            alignment: selected ? Alignment.topLeft :Alignment.topRight ,


          ),
        ),
      ),

    );
  }
}
