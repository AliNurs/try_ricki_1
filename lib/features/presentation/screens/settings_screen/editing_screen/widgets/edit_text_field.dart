// ignore_for_file: public_member_api_docs, sort_constructors_first
// part of'../editing_screen.dart';

import 'package:flutter/material.dart';
import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';

class EditTextField extends StatelessWidget {
  const EditTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: hintText,
        hintStyle: AppTextStyles.w400size16.copyWith(
          color: AppColors.dark0B1E2D,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
