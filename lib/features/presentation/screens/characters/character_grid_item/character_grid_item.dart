part of '../character_screen.dart';

class CharacterGridItem extends StatelessWidget {
  const CharacterGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(
            child: Text('ChaharacterGrid Loading'),
          ),
          error: () => const Center(
            child: Text('Error State'),
          ),
          orElse: () => const Center(
            child: Text(
              'OrElse Rabotal Brat',
              style: AppTextStyles.w500size20,
            ),
          ),
          succes: (characters) => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.88,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CharacterDetailScreen(),
                  ),
                );
              },
              //Zdes byl Container esli  daet oshibku
              child: Column(
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
                      Text(
                        "Alive",
                        style: AppTextStyles.w500size10.copyWith(
                          color: AppColors.textColor43D049,
                        ),
                      ),
                      Text(
                        'Rick Sanchez',
                        style: AppTextStyles.w500size16
                            .copyWith(color: AppColors.textColor0B1E2D),
                      ),
                      Text(
                        'WrrrrrrrrO',
                        style: AppTextStyles.w400size12
                            .copyWith(color: AppColors.textColor828282),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
