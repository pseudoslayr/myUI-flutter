import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello World"),
      ),
      floatingActionButton: GestureDetector(
        onLongPress: () => AdaptiveTheme.of(context).setSystem(),
        child: FloatingActionButton(
          onPressed: () => AdaptiveTheme.of(context).toggleThemeMode(),
          child: Icon(Icons.mood_outlined),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Hey This is the body of the page"),
        ),
      ),
    );
  }
}
