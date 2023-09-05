import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/providers/counts.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<Counts>().add();
          },
          child: Icon(Icons.add),
        ),
        const SizedBox(width: 40),
        ElevatedButton(
          onPressed: () {
            context.read<Counts>().remove();
          },
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
