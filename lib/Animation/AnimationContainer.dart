import 'package:flutter/material.dart';

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({super.key});

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer> {
  double _hight = 50;
  double _width = 50;
  double _opecty = 1;
   Color color = Colors.black ;
  bool selected = false;

  // String _colors = Color.fromRGBO(r, g, b, opacity) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              height: _hight,
              width: _width,
              decoration: BoxDecoration(
                color: color.withOpacity(_opecty),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    _opecty= 0.5;
                    _width= 150;
                    _hight =100;
                    color = Colors.lightGreenAccent ;
                  });
                },
                child: Text("Animation")),
            InkWell(
                onTap: () {
                  setState(() {
                    _opecty= 1;
                    _width= 50;
                    _hight =50;
                    color = Colors.black ;
                  });
                },
                child: Text("reset")),
      GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: 250.0,
            height: 250.0,
            color: Colors.red,
            child: AnimatedAlign(
              alignment: selected ? Alignment. center: Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50.0),
            ),
          ),
        ),
      )
          ],
        ),
      ),
    );
  }
}
