import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            //   TODO 5: Add dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            //   TODO 6: Add Container, Column, Icon and Text
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            //   TODO 7: Add Center widget with Chip widget children
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 20,
                children: [
                  buildChip('Healthy'),
                  buildChip('Vegan'),
                  buildChip('Carrots'),
                  buildChip('Greens'),
                  buildChip('Wheat'),
                  buildChip('Pescetarian'),
                  buildChip('Mint'),
                  buildChip('Lemongrass'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Chip buildChip(String title) {
    return Chip(
      label: Text(
        title,
        style: FooderlichTheme.darkTextTheme.bodyText1,
      ),
      backgroundColor: Colors.black.withOpacity(0.7),
    );
  }
}
