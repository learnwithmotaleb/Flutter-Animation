import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {

  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedCrossFade"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          TextButton(onPressed: (){
            setState(() {
              _bool = !_bool;
            });

          }, child: Text("Switch",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)),
          SizedBox(height: 20,),
          AnimatedCrossFade(
              firstChild: Image.asset("assets/image/Lalmonirhat_picture.jpg",width: double.infinity, height: 200,fit: BoxFit.cover,),
              secondChild: Image.asset("assets/image/Panchagarh_picture.jpg",width: double.infinity,height: 200,fit: BoxFit.cover),
              crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 2)
          )

        ],
      ),
    );
  }
}
