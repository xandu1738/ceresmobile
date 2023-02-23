import 'package:ceresmobile/ui/widgets/grid_card.dart';
import 'package:flutter/material.dart';

class ReceiptMenu extends StatelessWidget {
  const ReceiptMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridCard(text: "Here");
        },
      ),
    );
  }
}
