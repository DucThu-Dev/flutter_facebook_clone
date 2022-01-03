import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';
import 'package:flutter_facebook_clone/resources/icon_resource.dart';
import 'package:flutter_facebook_clone/resources/image_resource.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'facebook',
          style: GoogleFonts.roboto(
            color: ColorResource.fbBlue,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            child: Image.asset(
              IconResource.search,
              height: 35,
              width: 35,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 12),
          InkWell(
            child: Image.asset(
              IconResource.chat,
              height: 35,
              width: 35,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          const Divider(thickness: 1, color: ColorResource.lightGrey),

          /// New status bar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
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
          ),
          const Divider(thickness: 1, color: ColorResource.lightGrey),

          /// Extension Bar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                extensionBarBuilder(IconResource.meeting, 'Phát trực tiếp'),
                extensionBarBuilder(IconResource.image, 'Ảnh'),
                extensionBarBuilder(IconResource.meetingRoom, 'Phòng họp mặt'),
              ],
            ),
          ),
          const Divider(thickness: 8, color: ColorResource.lightGrey),

          /// Meeting room creation bar.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Phòng họp mặt video và âm thanh',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Tạo phòng họp mặt',
                        style: const TextStyle(color: ColorResource.fbBlue),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: ColorResource.lightBlue,
                      ),
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorResource.grey,
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorResource.grey,
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorResource.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(thickness: 8, color: ColorResource.lightGrey),

          /// Story bar
          Padding(
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
                  child: Column(children: [
                    Expanded(child: Container()),
                    Expanded(child: Container()),
                  ],),
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
          ),
        ],
      ),
    );
  }

  Widget extensionBarBuilder(String image, String title) {
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
