import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';

class MainScreen extends StatelessWidget {
  final Widget body;
  final int currentPageIndex;
  final void Function(int index) onChangeIndex;

  const MainScreen({super.key, required this.body, required this.currentPageIndex, required this.onChangeIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: onChangeIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  color: ColorStyles.gray4,
                ),
                selectedIcon: Stack(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: ColorStyles.primary100,
                    ),
                    Icon(
                      Icons.home,
                      color: ColorStyles.primary40,
                    ),
                  ],
                ),
                label: 'home'
            ),

            NavigationDestination(
                icon: Icon(
                    Icons.bookmark_border_outlined,
                    color: ColorStyles.gray4
                ),
                selectedIcon: Stack(
                  children: [
                    Icon(
                        Icons.bookmark_border_outlined,
                        color: ColorStyles.primary100
                    ),
                    Icon(
                      Icons.bookmark_border,
                      color: ColorStyles.primary40,
                    ),
                  ],
                ),
                label: 'bookmark'
            ),

            NavigationDestination(
                icon: Icon(
                    Icons.notifications_outlined,
                    color: ColorStyles.gray4
                ),
                selectedIcon: Stack(
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      color: ColorStyles.primary100
                    ),
                    Icon(
                      Icons.notifications,
                      color: ColorStyles.primary40,
                    ),
                  ],
                ),
                label: 'notification'
            ),

            NavigationDestination(
                icon: Icon(
                    Icons.person_outline,
                    color: ColorStyles.gray4
                ),
                selectedIcon: Stack(
                  children: [
                    Icon(
                        Icons.person_outline,
                        color: ColorStyles.primary100
                    ),
                    Icon(
                      Icons.person,
                      color: ColorStyles.primary40,
                    ),
                  ],
                ),
                label: 'profile'
            ),
          ]
      ),
    );
  }
}
