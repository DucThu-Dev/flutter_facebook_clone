import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/presentations/main_screen/extend_function_widget.dart';
import 'package:flutter_facebook_clone/presentations/main_screen/meeting_room_widget.dart';
import 'package:flutter_facebook_clone/presentations/main_screen/post_card_widget.dart';
import 'package:flutter_facebook_clone/presentations/main_screen/story_section_widget.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';

import 'new_post_creation_section_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Divider(thickness: 1, color: ColorResource.lightGrey),
        NewPostCreationWidget(),
        const Divider(thickness: 1, color: ColorResource.lightGrey),
        ExtendFunctionWidget(),
        const Divider(thickness: 8, color: ColorResource.lightGrey),
        MeetingRoomWidget(),
        const Divider(thickness: 8, color: ColorResource.lightGrey),
        StorySectionWidget(),
        for (int index = 0; index < 20; index++) ...[
          const Divider(thickness: 8, color: ColorResource.lightGrey),
          const PostCardWidget(),
        ]
      ],
    );
  }
}
