// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:try_ricki_1/features/presentation/screens/resources/app_images.dart';
import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 20,
      style: AppTextStyles.w400size16,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(100),
        ),
        fillColor: AppColors.colorF2F2F2,
        filled: true,
        hintText: hintText,
        hintStyle: AppTextStyles.w400size16
            .copyWith(color: AppColors.unSelectedBDBDBD),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 12,
          ),
          child: IconButton(
            icon: const Icon(Icons.search, size: 26),
            onPressed: () {},
          ),
        ),
        suffixIcon: SizedBox(
          width: 55,
          child: IntrinsicHeight(
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const VerticalDivider(
                    thickness: 2,
                    width: 2,
                    indent: 12,
                    endIndent: 12,
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    AppImages.filterTextField,
                    scale: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
