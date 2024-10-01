import 'package:flutter/material.dart';

class TextImage extends StatelessWidget {
  // Constructor for the widget
  const TextImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // Aligns the image and text in the center horizontally
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Displaying the image from assets
        const Image(
          image: AssetImage("Member.png"), // Path to the image in assets folder
          width: 100, // Set image width to 100 pixels
          height: 100, // Set image height to 100 pixels
        ),
        // Adds spacing between the image and the text
        const SizedBox(width: 10), // Horizontal space of 10 pixels
        // Displaying the text next to the image
        const Text(
          "This is some text next to the image.", // The displayed text
          style: TextStyle(fontSize: 16), // Setting font size to 16
        ),
      ],
    );
  }
}
