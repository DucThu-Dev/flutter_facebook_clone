import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/icon_resource.dart';

class ExtendFunctionWidget extends StatelessWidget {
  const ExtendFunctionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _extensionBarBuilder(IconResource.meeting, 'Phát trực tiếp'),
          _extensionBarBuilder(IconResource.image, 'Ảnh'),
          _extensionBarBuilder(IconResource.meetingRoom, 'Phòng họp mặt'),
        ],
      ),
    );
  }

    Widget _extensionBarBuilder(String image, String title) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          height: 24,
          width: 24,
        ),
        const SizedBox(width: 4),
        Text(title),
      ],
    );
  }
}
