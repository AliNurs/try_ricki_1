import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:try_ricki_1/features/presentation/screens/characters/character_detail_screen/character_detail_screen.dart';
import 'package:try_ricki_1/features/presentation/screens/characters/character_screen.dart';
import 'package:try_ricki_1/features/presentation/screens/filters/filter_screen.dart';
import 'package:try_ricki_1/features/presentation/screens/resources/app_svgs.dart';
import 'package:try_ricki_1/features/presentation/screens/settings_screen/settings_screen.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';

class BNavigationBar extends StatefulWidget {
  BNavigationBar({Key? key}) : super(key: key);

  @override
  State<BNavigationBar> createState() => _BNavigationBarState();
}

class _BNavigationBarState extends State<BNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          ListCharacterScreen(),

          // EditingScreen(),
          CharacterDetailScreen(),
          SettingsScreen(),
          // FilterScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 12,
        backgroundColor: AppColors.colorFFFFFF,
        selectedItemColor: AppColors.navBarSelect,
        selectedFontSize: 14,
        unselectedItemColor: AppColors.unSelectedBDBDBD,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppSvgs.character,
              color: AppColors.unSelectedBDBDBD,
            ),
            activeIcon: SvgPicture.asset(
              AppSvgs.character,
              color: AppColors.navBarSelect,
            ),
            label: 'Персонажи',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppSvgs.location,
            ),
            activeIcon: SvgPicture.asset(
              AppSvgs.location,
              color: AppColors.navBarSelect,
            ),
            label: 'Локации',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppSvgs.episodes,
            ),
            activeIcon: SvgPicture.asset(
              AppSvgs.episodes,
              color: AppColors.navBarSelect,
            ),
            label: 'Эпизоды',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
        ],
      ),
    );
  }
}
