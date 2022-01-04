import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/presentations/menu_screen/menu_screen.dart';
import 'package:flutter_facebook_clone/presentations/notify_screen/notify_screen.dart';
import 'package:flutter_facebook_clone/presentations/store_screen/store_screen.dart';
import 'package:flutter_facebook_clone/presentations/video_screen/video_screen.dart';
import 'package:flutter_facebook_clone/resources/color_resource.dart';
import 'package:flutter_facebook_clone/resources/icon_resource.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_screen/main_screen.dart';

class NavigationTabWidget extends StatefulWidget {
  const NavigationTabWidget({Key? key}) : super(key: key);

  @override
  _NavigationTabContrWidget createState() => _NavigationTabContrWidget();
}

enum ScreenProperties { screen, tabIcon, tabIconFill, tabTitle }

class _NavigationTabContrWidget extends State<NavigationTabWidget>
    with SingleTickerProviderStateMixin {
  late List<Map<ScreenProperties, dynamic>> _screens;
  int _selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

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

    _tabController =
        TabController(length: _screens.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 112,
            pinned: true,
            floating: true,
            title: Text(
              'facebook',
              style: GoogleFonts.roboto(
                color: ColorResource.fbBlue,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: <Widget>[
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
            bottom: TabBar(
              controller: _tabController,
              tabs: _screens
                  .map((e) => Tab(
                        icon: Image.asset(
                          e[ScreenProperties.tabIcon] as String,
                          height: 32,
                          width: 32,
                        ),
                        // text: e[ScreenProperties.tabTitle] as String,
                      ))
                  .toList(),
              onTap: (index) {
                // setState(() {
                //   _selectedIndex = index;
                // });
              },
              indicator: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: ColorResource.fbBlue,
                  ),
                ),
                
              ),
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: _screens
              .map((e) => e[ScreenProperties.screen] as Widget)
              .toList(),
        ),
      ),
    );
  }
}
