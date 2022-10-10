import 'package:flutter/material.dart';
import 'package:try_ricki_1/features/presentation/screens/settings_screen/editing_screen/widgets/edit_text_field.dart';
import 'package:try_ricki_1/features/presentation/widgets/app_list_tile.dart';
import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';
part 'profile_screen/profile_screen.dart';
part 'editing_screen/editing_screen.dart';
part 'widgets/radio_btn.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  final getAlert = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightFCFCFC,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Настройки',
          style: AppTextStyles.w500size20.copyWith(
            color: AppColors.textColor0B1E2D,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ch.png',
                  ),
                  radius: 40,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Oleg Belotserkovsky',
                      style: AppTextStyles.w400size16.copyWith(
                        color: AppColors.textColor0B1E2D,
                      ),
                    ),
                    Text(
                      'Rick',
                      style: AppTextStyles.w400size14.copyWith(
                        color: AppColors.textColor828282,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue),
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Редактировать',
                  style: AppTextStyles.w400size16.copyWith(
                    color: AppColors.navBarSelect,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 18),
            Text(
              'Внешний вид',
              style: AppTextStyles.w500size10.copyWith(
                color: AppColors.textColor828282,
              ),
            ),
            const SizedBox(height: 15),
            ValueListenableBuilder(
                valueListenable: getAlert,
                builder: (context, _, __) {
                  return AppListTile(
                    title: 'Темная тема',
                    subtitle: 'Включена',
                    onTap: () {
                      getAlert != getAlert;
                      return showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            insetPadding: EdgeInsets.zero,
                            // contentPadding: EdgeInsets.zero,
                            title: Text(
                              'Темная тема',
                              style: AppTextStyles.w500size20.copyWith(
                                color: AppColors.textColor0B1E2D,
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RadioBtn(
                                  radioText: 'Выключенна',
                                ),
                                RadioBtn(
                                  radioText: 'Включенна',
                                ),
                                RadioBtn(
                                  radioText: 'Следовать настройкам системы',
                                ),
                                RadioBtn(
                                  radioText: 'В режиме энергосбережения',
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Отмена',
                                  style: AppTextStyles.w500size14.copyWith(
                                    color: AppColors.textColor0B1E2D,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    isSettingsScreen: true,
                    activeLeading: true,
                  );
                }),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 25),
            Text(
              'О приложении',
              style: AppTextStyles.w500size10.copyWith(
                color: AppColors.textColor828282,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.',
              style: AppTextStyles.w400size13.copyWith(
                color: AppColors.textColor0B1E2D,
              ),
            ),
            const SizedBox(height: 25),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 25),
            Text(
              'Версия приложения',
              style: AppTextStyles.w500size10.copyWith(
                color: AppColors.textColor828282,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              'Rick & Morty  v1.0.0',
              style: AppTextStyles.w400size13.copyWith(
                color: AppColors.textColor0B1E2D,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
