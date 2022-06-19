import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: (Column(
          children: const [
            Text(
              'Scan The Snake',
              style: TextStyle(
                  color: Color(0xFF323232),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        )));
  }
}
