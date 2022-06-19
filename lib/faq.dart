import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'FAQ',
    );
  }
}



// ListView.builder(
//   // Let the ListView know how many items it needs to build.
//   itemCount: items.length,
//   // Provide a builder function. This is where the magic happens.
//   // Convert each item into a widget based on the type of item it is.
//   itemBuilder: (context, index) {
//     final item = items[index];

//     return ListTile(
//       title: item.buildTitle(context),
//       subtitle: item.buildSubtitle(context),
//     );
//   },
// )