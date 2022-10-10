import 'package:flutter/material.dart';
import 'package:try_ricki_1/features/presentation/screens/characters/character_screen.dart';
import 'package:try_ricki_1/features/presentation/widgets/app_list_tile.dart';
import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightFCFCFC,
        body: CustomScrollView(
          slivers: [
            const SliverPersistentHeader(
              pinned: true,
              delegate: MySliverAppBar(expandedHeight: 200),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Text(
                      "Рик Cанчез",
                      style: AppTextStyles.w400size34
                          .copyWith(color: AppColors.textColor0B1E2D),
                    ),
                    Text('Живой',
                        style: AppTextStyles.w500size10.copyWith(
                          color: AppColors.textColor43D049,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудностьи социопатия заставляют беспокоиться семью его дочери.",
                      style: AppTextStyles.w400size13.copyWith(
                        color: AppColors.textColor0B1E2D,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Пол',
                              style: AppTextStyles.w400size12.copyWith(
                                color: AppColors.textColor828282,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Мужской',
                              style: AppTextStyles.w400size14.copyWith(
                                color: AppColors.textColor0B1E2D,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Column(
                          children: [
                            Text(
                              'Расса',
                              style: AppTextStyles.w400size12.copyWith(
                                color: AppColors.textColor828282,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Человек',
                              style: AppTextStyles.w400size14.copyWith(
                                color: AppColors.textColor0B1E2D,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    AppListTile(
                      activeLeading: false,
                      title: 'Место рождения',
                      subtitle: 'Земля C-137',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListCharacterScreen(),
                          ),
                        );
                      },
                      isSettingsScreen: false,
                    ),
                    const SizedBox(height: 6),
                    AppListTile(
                      activeLeading: false,
                      title: 'Местоположение',
                      subtitle: 'Земля (Измерение подменны)',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListCharacterScreen(),
                          ),
                        );
                      },
                      isSettingsScreen: false,
                    ),
                    const Divider(thickness: 2),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Эпизоды',
                          style: AppTextStyles.w500size20.copyWith(
                            color: AppColors.textColor0B1E2D,
                          ),
                        ),
                        Text(
                          'Все эпизоды',
                          style: AppTextStyles.w400size12.copyWith(
                            color: AppColors.textColor828282,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 250, child: CharacterListItem()),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  const MySliverAppBar({required this.expandedHeight});

  final double expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ch.png'),
            ),
            title: Text('Character Name'),
          ),
        ),
        Opacity(
          opacity: 1 - shrinkOffset / expandedHeight,
          child: Container(
            height: 218,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/ch.png',
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        Positioned(
            top: expandedHeight / 2 - shrinkOffset,
            left: MediaQuery.of(context).size.width / 4,
            child: Opacity(
              opacity: 1 - shrinkOffset / expandedHeight,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 77,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage(
                      "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                    ),
                  ),
                ),
              ),
            ))
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
