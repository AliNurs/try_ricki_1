import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_ricki_1/features/presentation/bloc/characters/characters_cubit.dart';
import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';
import 'package:try_ricki_1/service_locator.dart';

class CharacterItems extends StatelessWidget {
  const CharacterItems({super.key});

  final bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return isGrid
        ? BlocBuilder<CharactersCubit, CharactersState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => SizedBox.shrink(),
                succes: (characters) => ListView.separated(
                    // Zdes toje oborachivai Container
                    itemBuilder: (context, index) => Row(
                          children: [
                            const CircleAvatar(
                              radius: 38,
                              backgroundImage: AssetImage(
                                'assets/images/ch.png',
                              ),
                            ),
                            const SizedBox(width: 18),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Живой',
                                    style: AppTextStyles.w500size10.copyWith(
                                      color: AppColors.textColor43D049,
                                    )),
                                Text('Рик Cанчез',
                                    style: AppTextStyles.w500size16.copyWith(
                                        color: AppColors.textColor0B1E2D)),
                                Text('Человек, Мужской',
                                    style: AppTextStyles.w400size12.copyWith(
                                        color: AppColors.textColor828282)),
                              ],
                            ),
                          ],
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 24,
                        ),
                    itemCount: characters!.results!.length),
              );
            },
          )
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.88,
              crossAxisCount: 2,
            ), // Zdes toje oborachivai Container
            itemBuilder: (context, index) => Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/images/ch.png',
                  ),
                ),
                const SizedBox(height: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Живой',
                        style: AppTextStyles.w500size10.copyWith(
                          color: AppColors.textColor43D049,
                        )),
                    Text('Рик Cанчез',
                        style: AppTextStyles.w500size16
                            .copyWith(color: AppColors.textColor0B1E2D)),
                    Text('Человек, Мужской',
                        style: AppTextStyles.w400size12
                            .copyWith(color: AppColors.textColor828282)),
                  ],
                )
              ],
            ),
          );
  }
}


/* 

: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
            ),
            itemCount: 10,
            itemBuilder: (context, index) => Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/ch.png',
                    scale: 3,
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'data',
                  style: AppTextStyles.w500size10.copyWith(
                    color: AppColors.textColor43D049,
                  ),
                ),
                Text(
                  'data',
                  style: AppTextStyles.w500size14
                      .copyWith(color: AppColors.textColor0B1E2D),
                ),
                Text(
                  'data',
                  style: AppTextStyles.w400size12
                      .copyWith(color: AppColors.textColor828282),
                ),
              ],
            ),
          );
 */