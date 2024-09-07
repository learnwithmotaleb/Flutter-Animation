import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Hero Page"),
            trailing: Hero(
              child: Icon(Icons.person),
              tag: "tag_1",
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HeroPageScreen()));
            },
          )
        ],
      ),
    );
  }
}


class HeroPageScreen extends StatelessWidget {
  const HeroPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Hero Page"),
        centerTitle: true,
      ),
      body: Hero(
        tag: "tag_1",
        child: Container(
          width: double.infinity,
          height: 150,
          color: Colors.blue,
          child: Center(
            child: Text("LWMSOFT LTD"),
          ),
        ),
      ),
    );
  }
}

