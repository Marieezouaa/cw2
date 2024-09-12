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

  void toggleImage(){
    setState(() {
      if (counter == 1) {
        counter++; //if the counter is 1, increment it, counter becomes 2
      } else {
        /*if the counter does not equal 1, decrement,
      I could make this better but meh, it works just fine*/
        counter--;
      }
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
          OutlinedButton(
            onPressed: toggleImage,
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 151, 127, 237),
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
