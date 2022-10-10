part of '../settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightFCFCFC,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Редактировать профиль',
          style: AppTextStyles.w500size20.copyWith(
            color: AppColors.textColor0B1E2D,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/ch.png'),
            maxRadius: 75,
          ),
          const SizedBox(height: 18),
          TextButton(
            onPressed: () {},
            child: Text(
              'Изменить фото',
              style: AppTextStyles.w400size16.copyWith(
                color: AppColors.navBarSelect,
              ),
            ),
          ),
          const SizedBox(height: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'профиль',
                style: AppTextStyles.w500size10.copyWith(
                  color: AppColors.textColor828282,
                ),
              ),
              const SizedBox(height: 12),
              AppListTile(
                activeLeading: false,
                title: 'Изменить ФИО',
                subtitle: 'Oleg Belotserkovsky',
                onTap: () {},
                isSettingsScreen: true,
              ),
              const SizedBox(height: 12),
              AppListTile(
                activeLeading: false,
                title: 'Логин',
                subtitle: 'Rick',
                onTap: () {},
                isSettingsScreen: true,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
