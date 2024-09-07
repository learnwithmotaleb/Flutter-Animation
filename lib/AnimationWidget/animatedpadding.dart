import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key});

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {

  double paddinValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPadding"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
              setState(() {
                paddinValue = paddinValue == 0 ? 100.0 : 0.0;
              });

            },
                child: Text("Padding Change")
            ),
            SizedBox(height: 10,),
            Text("Padding : $paddinValue"),
            SizedBox(height: 10,),
            AnimatedPadding(
                padding: EdgeInsets.all(paddinValue),
                duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),

              ),


            )
          ],
        ),
      ),
    );
  }
}
