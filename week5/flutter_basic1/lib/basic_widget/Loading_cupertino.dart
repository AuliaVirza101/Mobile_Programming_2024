import 'package:flutter/material.dart';  // Import Material package
import 'package:flutter/cupertino.dart';  // Import Cupertino package

// Create a stateless widget
class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Return the MaterialApp structure
    return MaterialApp(
      home: Container(
        margin: const EdgeInsets.only(top: 30), // Margin at the top
        color: Colors.white, // Set the background color to white
        child: Column(
          children: <Widget>[
            // Cupertino-styled button
            CupertinoButton(
              child: const Text("Contoh button"), // Button text
              onPressed: () {}, // Empty onPressed function
            ),
            // Cupertino loading indicator (spinning wheel)
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
