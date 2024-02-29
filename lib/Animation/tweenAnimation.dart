import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animationtry extends StatefulWidget {
  const Animationtry({super.key});

  @override
  State<Animationtry> createState() => _AnimationtryState();
}

class _AnimationtryState extends State<Animationtry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TweenAnimationBuilder(tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(seconds: 5),
            builder: (BuildContext context, double value, child ) {
              return Opacity(opacity: value,
                child: Text("Hello",style: TextStyle(fontSize: 100,color: Colors.black),),);
            },
          ),
          Hero(tag: "data", child: Image.network("https://i.pinimg.com/736x/a2/9d/13/a29d13c739a0081e422bc950ecb5f620.jpg"))
        ],
      ),
    );
  }
}
