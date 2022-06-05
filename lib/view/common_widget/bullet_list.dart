import 'package:flutter/material.dart';

import '../../utils/text_styles.dart';

class BulletList extends StatelessWidget {
  final List<String> strings;

  const BulletList(this.strings, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextTypes.mediamP('\u2022'),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextTypes.mediamP(str),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
