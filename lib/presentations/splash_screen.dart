import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';
import 'package:flutter_facebook_clone/resources/image_resource.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.white,
      body: Center(
        child: Image.asset(
          ImageResource.facebookCloneLogo,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
