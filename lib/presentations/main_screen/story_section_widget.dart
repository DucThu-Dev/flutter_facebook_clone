import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';

class StorySectionWidget extends StatelessWidget {
  const StorySectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Row(
        children: [
          Container(
            width: 129,
            height: 247,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorResource.grey,
            ),
            child: Column(
              children: [
                Expanded(child: Container()),
                Expanded(child: Container()),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 129,
            height: 247,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorResource.grey,
            ),
          ),
        ],
      ),
    );
  }
}
