import 'package:flutter/material.dart';

class indexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoomable Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ZoomableImageScreen(),
    );
  }
}

class ZoomableImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoomable Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                  ),
                );
              },
              child: Hero(
                tag: 'imageHero',
                child: Image.network(
                  'https://via.placeholder.com/400',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Some text here',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoomable Image Detail'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://via.placeholder.com/400',
            ),
          ),
        ),
      ),
    );
  }
}
