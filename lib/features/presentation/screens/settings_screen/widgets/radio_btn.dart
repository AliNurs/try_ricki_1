part of '../settings_screen.dart';

class RadioBtn extends StatelessWidget {
  RadioBtn({super.key, required this.radioText});
  final getAlert = ValueNotifier<bool>(false);
  String radioText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: getAlert,
          groupValue: true,
          onChanged: (v) {
            v;
          },
          toggleable: true,
        ),
        Text(
          radioText,
          style: AppTextStyles.w400size16.copyWith(
            color: AppColors.textColor0B1E2D,
          ),
        ),
      ],
    );
  }
}
