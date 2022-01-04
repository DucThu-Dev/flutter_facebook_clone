import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';
import 'package:flutter_facebook_clone/resources/icon_resource.dart';
import 'package:flutter_facebook_clone/resources/image_resource.dart';

class PostCardWidget extends StatelessWidget {
  const PostCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _topPostBuilder(context),
        _bodyBuilder(context),
        _reactionBuilder(context),
        const Divider(
          thickness: 1,
          color: ColorResource.lightGrey,
          indent: 12,
          endIndent: 12,
        ),
        _actionBuilder(context),
      ],
    );
  }

  Widget _topPostBuilder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: ColorResource.grey,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Someone',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                '4 minutes',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              IconResource.threeDots,
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyBuilder(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Text(
            'Tôi cảm thấy trống rỗng quá',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(height: 8),
        Image.network(
          'https://genk.mediacdn.vn/2019/11/11/photo-1-1573449274443960858688.jpg',
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }

  Widget _reactionBuilder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      child: Row(
        children: [
          Image.asset(
            IconResource.reactionLikeSmall,
            height: 20,
            width: 20,
          ),
          const SizedBox(width: 8),
          Text('100', style: Theme.of(context).textTheme.bodyText2),
          const Spacer(),
          Text('100 Bình luận', style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }

  Widget _actionBuilder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _actionButtonBuilder(
              context, IconResource.likeButton, 'Thích', () {}),
          _actionButtonBuilder(context, IconResource.comment, 'Bình luận', () {
            showModalBottomSheet(
                context: context,
                backgroundColor: ColorResource.transparent,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    margin: const EdgeInsets.only(top: 32),
                    decoration: const BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          child: Row(
                            children: [
                              Image.asset(
                                IconResource.reactionLikeSmall,
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(width: 4),
                              Text('Bạn và 143 người khác',
                                  style: Theme.of(context).textTheme.bodyText1),
                              const Spacer(),
                              Image.asset(
                                IconResource.reactionLikeSmall,
                                height: 24,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                            thickness: 1, color: ColorResource.lightGrey),
                      ],
                    ),
                  );
                });
          }),
          _actionButtonBuilder(
              context, IconResource.shareButton, 'Chia sẻ', () {}),
        ],
      ),
    );
  }

  Widget _actionButtonBuilder(
    BuildContext context,
    String icon,
    String title,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 45,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
