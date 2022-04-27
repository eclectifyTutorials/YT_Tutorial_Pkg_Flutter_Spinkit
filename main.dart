// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = [
    "SpinKitRotatingCircle", "SpinKitRotatingPlain", "SpinKitChasingDots",
    "SpinKitPumpingHeart", "SpinKitPulse", "SpinKitDoubleBounce",
    "SpinKitWave", "SpinKitWave", "SpinKitWave", "SpinKitPianoWave",
    "SpinKitPianoWave", "SpinKitPianoWave", "SpinKitThreeBounce", "SpinKitThreeInOut",
    "SpinKitWanderingCubes", "SpinKitWanderingCubes", "SpinKitCircle",
    "SpinKitFadingFour", "SpinKitFadingFour", "SpinKitFadingCube",
    "SpinKitCubeGrid", "SpinKitFoldingCube", "SpinKitRing", "SpinKitDualRing",
    "SpinKitSpinningLines", "SpinKitFadingGrid", "SpinKitFadingGrid", "SpinKitSquareCircle",
    "SpinKitSpinningCircle", "SpinKitSpinningCircle", "SpinKitFadingCircle",
    "SpinKitHourGlass", "SpinKitPouringHourGlass", "SpinKitPouringHourGlassRefined",
    "SpinKitRipple", "SpinKitDancingSquare",
  ];

  static const kits = <Widget>[
    SpinKitRotatingCircle(color: Colors.redAccent, ),
    SpinKitRotatingPlain(color: Colors.redAccent),
    SpinKitChasingDots(color: Colors.redAccent),
    SpinKitPumpingHeart(color: Colors.redAccent),
    SpinKitPulse(color: Colors.redAccent),
    SpinKitDoubleBounce(color: Colors.redAccent),
    SpinKitWave(color: Colors.redAccent, type: SpinKitWaveType.start),
    SpinKitWave(color: Colors.redAccent, type: SpinKitWaveType.center),
    SpinKitWave(color: Colors.redAccent, type: SpinKitWaveType.end),
    SpinKitPianoWave(color: Colors.redAccent, type: SpinKitPianoWaveType.start),
    SpinKitPianoWave(color: Colors.redAccent, type: SpinKitPianoWaveType.center),
    SpinKitPianoWave(color: Colors.redAccent, type: SpinKitPianoWaveType.end),
    SpinKitThreeBounce(color: Colors.redAccent),
    SpinKitThreeInOut(color: Colors.redAccent),
    SpinKitWanderingCubes(color: Colors.redAccent),
    SpinKitWanderingCubes(color: Colors.redAccent, shape: BoxShape.circle),
    SpinKitCircle(color: Colors.redAccent),
    SpinKitFadingFour(color: Colors.redAccent),
    SpinKitFadingFour(color: Colors.redAccent, shape: BoxShape.rectangle),
    SpinKitFadingCube(color: Colors.redAccent),
    SpinKitCubeGrid(size: 51.0, color: Colors.redAccent),
    SpinKitFoldingCube(color: Colors.redAccent),
    SpinKitRing(color: Colors.redAccent),
    SpinKitDualRing(color: Colors.redAccent),
    SpinKitSpinningLines(color: Colors.redAccent),
    SpinKitFadingGrid(color: Colors.redAccent),
    SpinKitFadingGrid(color: Colors.redAccent, shape: BoxShape.rectangle),
    SpinKitSquareCircle(color: Colors.redAccent),
    SpinKitSpinningCircle(color: Colors.redAccent),
    SpinKitSpinningCircle(color: Colors.redAccent, shape: BoxShape.rectangle),
    SpinKitFadingCircle(color: Colors.redAccent),
    SpinKitHourGlass(color: Colors.redAccent),
    SpinKitPouringHourGlass(color: Colors.redAccent),
    SpinKitPouringHourGlassRefined(color: Colors.redAccent),
    SpinKitRipple(color: Colors.redAccent),
    SpinKitDancingSquare(color: Colors.redAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spinkit"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.adaptiveCrossAxisCount,
          mainAxisSpacing: 46,
          childAspectRatio: 1.2,
        ),
        padding: const EdgeInsets.only(top: 32, bottom: 64),
        itemCount: kits.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              kits[index],
              SizedBox(height: 5,),
              Text(titles[index], style: TextStyle(fontSize: 12),),
            ],
          );
        },
      ),
    );
  }
}

extension on BuildContext {
  int get adaptiveCrossAxisCount {
    final width = MediaQuery.of(this).size.width;
    if (width > 1024) {
      return 8;
    } else if (width > 720 && width < 1024) {
      return 6;
    } else if (width > 480) {
      return 4;
    } else if (width > 320) {
      return 3;
    }
    return 1;
  }
}













