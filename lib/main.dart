import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhotoPage(),
    );
  }
}

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo with Rounded Border'),
      ),
      body: Center(
        child: Container(
          height: 200.0, 
          width: 200.0,  
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), // Rounded border
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0), 
            child: Image.network(
              'https://tinyurl.com/cse414-nike-res', 
              fit: BoxFit.cover, 
            ),
          ),
        ),
      ),
    );
  }
}
