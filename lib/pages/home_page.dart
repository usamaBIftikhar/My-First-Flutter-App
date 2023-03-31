import 'package:flutter/material.dart';
import 'package:my_app/class/item_class.dart';
import 'package:my_app/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardWdiget(
                box: ItemClass(
                  title: 'Rocket',
                  imagePath: 'images/rocket.png',
                  description: 'This is the Description',
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWdiget(
                      box: ItemClass(
                        title: 'Travel',
                        imagePath: 'images/travel.png',
                        description: 'This is the Description',
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWdiget(
                      box: ItemClass(
                        title: 'Space',
                        imagePath: 'images/space.png',
                        description: 'This is the Description',
                      ),
                    ),
                  ),
                ],
              ),
              CardWdiget(
                box: ItemClass(
                  title: 'Yeah',
                  imagePath: 'images/yeah.png',
                  description: 'This is the Description',
                ),
              ),
            ],
          ),
        ));
  }
}
