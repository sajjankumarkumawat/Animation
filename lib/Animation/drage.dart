import 'package:flutter/material.dart';

class AnimationDrage extends StatefulWidget {
  const AnimationDrage({super.key});

  @override
  State<AnimationDrage> createState() => _AnimationDrageState();
}

class _AnimationDrageState extends State<AnimationDrage> {
  bool isActive = false;
  List<Object> object = [];
  List<dynamic> object2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag $isActive"),
      ),
      body: InkWell(onTap: () {
        setState(() {
          isActive = false;
        });
      },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              DragTarget(
                onAcceptWithDetails: (data) {
                  setState(() {
                    isActive = true;
                   // isActive =false;
                  });
                },
                builder: (context, object, object2) {
                  return isActive
                      ? InkWell(onTap: () {
                    setState(() {
                      isActive = false;
                    });
                  },
                        child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.black,
                            child: const Text("main"),
                          ),
                      )
                      : Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                          child: const Text("main"),
                        );
                },
              ),
              Draggable(
                data: 'red',
                childWhenDragging: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: const Text("child dragging"),
                ),
                feedback: Material(
                  child: InkWell(onTap: () {
                    setState(() {
                      isActive = false;
                    });
                  },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: const Text("main"),
                    ),
                  ),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.pinkAccent,
                  child: const Text("main"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
