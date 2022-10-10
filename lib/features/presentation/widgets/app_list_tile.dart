// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.isSettingsScreen,
    required this.activeLeading,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final Function() onTap;
  final bool isSettingsScreen;
  final bool activeLeading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: activeLeading
          ? const Icon(
              Icons.color_lens_outlined,
              size: 40,
            )
          : null,
      title: Text(
        title,
        style: isSettingsScreen
            ? AppTextStyles.w400size14.copyWith(
                color: AppColors.textColor0B1E2D,
              )
            : AppTextStyles.w400size12.copyWith(
                color: AppColors.textColor828282,
              ),
      ),
      subtitle: Text(
        subtitle,
        style: isSettingsScreen
            ? AppTextStyles.w400size12.copyWith(
                color: AppColors.textColor828282,
              )
            : AppTextStyles.w400size14.copyWith(
                color: AppColors.textColor0B1E2D,
              ),
      ),
      trailing: const Icon(Icons.navigate_next),
    );
  }
}
