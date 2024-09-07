import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key});

  @override
  State<AnimatedPhysicalModelWidget> createState() => _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState extends State<AnimatedPhysicalModelWidget> {

  bool _isFlat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPhysicalModel"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedPhysicalModel(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Icon(Icons.flutter_dash,size: 100,),
                  ),
                ),
                shape: BoxShape.circle,
                elevation: _isFlat ? 0 : 20,
                color: Colors.white,
                shadowColor: Colors.black,
                duration: const Duration(seconds: 2)
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
                _isFlat = !_isFlat;
              });

            }, child: Text("Click Here"))
          ],
        ),
      ),
    );
  }
}
