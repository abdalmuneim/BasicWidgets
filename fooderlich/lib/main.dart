import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: create them
    final theme = FooderlichTheme.dark();
    //TODO: Apply Home Widget
    return MaterialApp(
      // TODO: add theme
      theme: theme,
      debugShowCheckedModeBanner: false,
      title: 'fooder lich',
      home: Scaffold(
        //  TODO: Style the title
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: theme.textTheme.headline6,
          ),
          centerTitle: true,
        ),
        body: Center(
          // TODO: Style the body text
          child: Text(
            'Let\'s get cooking 👩‍🍳',
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
