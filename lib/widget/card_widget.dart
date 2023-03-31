import 'package:flutter/material.dart';
import 'package:my_app/class/item_class.dart';
import 'package:my_app/pages/description_page.dart';

import '../core/constants.dart';

class CardWdiget extends StatelessWidget {
  const CardWdiget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: kDouble5,
              ),
              Image.asset(box.imagePath),
              Text(
                box.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: AutofillHints.familyName,
                ),
              ),
              Text(box.description),
              const SizedBox(
                height: kDouble10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
