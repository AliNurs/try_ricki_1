import 'package:flutter/material.dart';
import 'package:try_ricki_1/features/presentation/screens/characters/character_screen.dart';
import 'package:try_ricki_1/features/presentation/screens/resources/app_images.dart';
import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';
part 'widgets/app_chekboxes.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CharacterListItem(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Фильтры',
          style: AppTextStyles.w500size20.copyWith(
            color: AppColors.textColor0B1E2D,
          ),
        ),
        actions: [
          Image.asset(
            AppImages.notFilter,
            scale: 4,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            Text(
              'Сортировать',
              style: AppTextStyles.w500size10.copyWith(
                color: AppColors.textColor828282,
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'По алфавиту ',
                  style: AppTextStyles.w400size16.copyWith(
                    color: AppColors.textColor0B1E2D,
                  ),
                ),
                const SizedBox(
                  width: 160,
                ),
                Image.asset(
                  AppImages.filterUp,
                  scale: 4,
                ),
                Image.asset(
                  AppImages.filterDown,
                  scale: 4,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 30),
            Text(
              'Статус',
              style: AppTextStyles.w500size10.copyWith(
                color: AppColors.textColor828282,
              ),
            ),
            AppChekboxes(
              title: 'Живой',
              onChanged: (value) {},
              value: true,
            ),
            AppChekboxes(
              title: 'Мертвый',
              onChanged: (value) {},
              value: true,
            ),
            AppChekboxes(
              title: 'Неизвестно',
              onChanged: (value) {},
              value: true,
            ),
            const SizedBox(height: 30),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 30),
            Text(
              'Пол',
              style: AppTextStyles.w500size10.copyWith(
                color: AppColors.textColor828282,
              ),
            ),
            AppChekboxes(
              title: 'Мужской',
              onChanged: (value) {},
              value: true,
            ),
            AppChekboxes(
              title: 'Женский',
              onChanged: (value) {},
              value: true,
            ),
            AppChekboxes(
              title: 'Бесполый',
              onChanged: (value) {},
              value: true,
            ),
          ],
        ),
      ),
    );
  }
}
