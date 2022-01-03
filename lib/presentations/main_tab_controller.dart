import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/presentations/menu_screen/menu_screen.dart';
import 'package:flutter_facebook_clone/presentations/notify_screen/notify_screen.dart';
import 'package:flutter_facebook_clone/presentations/store_screen/store_screen.dart';
import 'package:flutter_facebook_clone/presentations/video_screen/video_screen.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';
import 'package:flutter_facebook_clone/resources/icon_resource.dart';

import 'main_screen/main_screen.dart';

class MainTabController extends StatefulWidget {
  const MainTabController({Key? key}) : super(key: key);

  @override
  _MainTabControllerState createState() => _MainTabControllerState();
}

enum ScreenProperties { screen, tabIcon, tabIconFill, tabTitle }

class _MainTabControllerState extends State<MainTabController> {
  late List<Map<ScreenProperties, dynamic>> _screens;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screens = [
      {
        ScreenProperties.screen: MainScreen(),
        ScreenProperties.tabIcon: IconResource.home,
        ScreenProperties.tabIconFill: IconResource.homeFill,
        ScreenProperties.tabTitle: 'Home',
      },
      {
        ScreenProperties.screen: VideoScreen(),
        ScreenProperties.tabIcon: IconResource.video,
        ScreenProperties.tabIconFill: IconResource.videoFill,
        ScreenProperties.tabTitle: 'Videos',
      },
      {
        ScreenProperties.screen: StoreScreen(),
        ScreenProperties.tabIcon: IconResource.store,
        ScreenProperties.tabIconFill: IconResource.storeFill,
        ScreenProperties.tabTitle: 'Store',
      },
      {
        ScreenProperties.screen: NotifyScreen(),
        ScreenProperties.tabIcon: IconResource.notify,
        ScreenProperties.tabIconFill: IconResource.notifyFill,
        ScreenProperties.tabTitle: 'Notification',
      },
      {
        ScreenProperties.screen: MenuScreen(),
        ScreenProperties.tabIcon: IconResource.menu,
        ScreenProperties.tabIconFill: IconResource.menuFill,
        ScreenProperties.tabTitle: 'Menu',
      },
    ];
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        body: IndexedStack(
          children: _screens
              .map((e) => e[ScreenProperties.screen] as Widget)
              .toList(),
          index: _selectedIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: _screens
              .map((e) => BottomNavigationBarItem(
                    icon: Image.asset(
                      e[ScreenProperties.tabIcon] as String,
                      height: 32,
                      width: 32,
                    ),
                    activeIcon: Image.asset(
                      e[ScreenProperties.tabIconFill] as String,
                      height: 32,
                      width: 64,
                    ),
                    label: e[ScreenProperties.tabTitle] as String,
                  ))
              .toList(),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: ColorResource.white,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      length: _screens.length,
    );
  }
}
