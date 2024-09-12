import 'package:flutter/material.dart';

class ImageToggler extends StatefulWidget {
  const ImageToggler({super.key});

  @override
  State<ImageToggler> createState() {
    return _ImageToggler();
  }
}

class _ImageToggler extends State<ImageToggler> {
  int counter = 1;

//there needs be a counter that is incremented and then decremented to set the image

  void counterChange() {
    setState(() {
      if (counter == 1) {
        counter++;
      } else {
        counter--;
      }
    });
  }

  void toggleImage() {
    setState(() {
      counterChange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/cat$counter.jpg',
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: toggleImage,
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromRGBO(112, 72, 176, 1),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text("Toggle"),
          ),
        ],
      ),
    );
  }
}
