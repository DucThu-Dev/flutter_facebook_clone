import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';

class MeetingRoomWidget extends StatelessWidget {
  const MeetingRoomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Phòng họp mặt video và âm thanh',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 4),
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
    );
  }
}
