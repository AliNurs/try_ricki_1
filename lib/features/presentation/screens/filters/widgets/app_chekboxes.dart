part of '../filter_screen.dart';

class AppChekboxes extends StatelessWidget {
  const AppChekboxes({
    Key? key,
    required this.title,
    required this.onChanged,
    required this.value,
  }) : super(key: key);
  final String title;
  final Function(bool?) onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(
          title,
          style: AppTextStyles.w400size16.copyWith(
            color: AppColors.textColor0B1E2D,
          ),
        ),
      ],
    );
  }
}
