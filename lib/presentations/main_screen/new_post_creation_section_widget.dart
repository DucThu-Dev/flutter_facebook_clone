import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';

class NewPostCreationWidget extends StatelessWidget {
  const NewPostCreationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorResource.grey,
            radius: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: ColorResource.grey,
                borderRadius: BorderRadius.circular(40),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}
