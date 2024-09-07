import 'package:flutter/material.dart';

import 'AnimationWidget/animatedAlign.dart';
import 'AnimationWidget/animatedBuilder.dart';
import 'AnimationWidget/animatedContainer.dart';
import 'AnimationWidget/animatedCrossFade.dart';
import 'AnimationWidget/animatedIcon.dart';
import 'AnimationWidget/animatedOpacity.dart';
import 'AnimationWidget/animatedSwitcher.dart';
import 'AnimationWidget/animateddefaultTextStyle.dart';
import 'AnimationWidget/animatedpadding.dart';
import 'AnimationWidget/animatedphysical.dart';
import 'AnimationWidget/animatedpositioned.dart';
import 'AnimationWidget/animatedrotation.dart';
import 'AnimationWidget/animatedsize.dart';
import 'AnimationWidget/decoratedboxTransition.dart';
import 'AnimationWidget/fadetransition.dart';
import 'AnimationWidget/hero.dart';
import 'AnimationWidget/lottieanimation.dart';
import 'AnimationWidget/modolbarrierwidget.dart';
import 'AnimationWidget/positionedTransition.dart';
import 'AnimationWidget/rotationtransition.dart';
import 'AnimationWidget/scaletransition.dart';
import 'AnimationWidget/sizeTransition.dart';
import 'AnimationWidget/slideTransition.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: false,
      ),
      home: LottieAnimtion(),
    );
  }
}


