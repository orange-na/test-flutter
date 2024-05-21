import 'package:flutter/material.dart';

class ButtonHolder extends StatelessWidget {
  const ButtonHolder({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final childrenWithDividers = <Widget>[];
    for (final child in children) {
      childrenWithDividers.add(child);

      childrenWithDividers.add(const VerticalDivider(
        thickness: 1,
        width: 1,
        indent: 5,
        endIndent: 5,
        color: Colors.white,
      ));
    }

    childrenWithDividers.removeLast();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [for (final child in childrenWithDividers) child],
      ),
    );
  }
}
