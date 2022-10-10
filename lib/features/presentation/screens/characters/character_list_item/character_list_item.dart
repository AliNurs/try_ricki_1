part of '../character_screen.dart';

class CharacterListItem extends StatelessWidget {
  const CharacterListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CharacterDetailScreen(),
            ),
          );
        }, // Zdes toje oborachivai Container
        child: Row(
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
                Text(
                  'Рик Cанчез',
                  style: AppTextStyles.w500size16.copyWith(
                    color: AppColors.textColor0B1E2D,
                  ),
                ),
                Text(
                  'Человек, Мужской',
                  style: AppTextStyles.w400size12.copyWith(
                    color: AppColors.textColor828282,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 24,
      ),
      itemCount: 15,
    );
  }
}
