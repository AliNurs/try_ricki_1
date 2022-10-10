part of '../settings_screen.dart';
// part 'widgets/edit_text_field.dart';

class EditingScreen extends StatelessWidget {
  const EditingScreen({Key? key}) : super(key: key);

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
          'Изменить ФИО',
          style: AppTextStyles.w500size20.copyWith(
            color: AppColors.textColor0B1E2D,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
      body: ListView(
        padding: const EdgeInsets.only(right: 16, left: 16),
        children: [
          const SizedBox(height: 35),
          Text(
            'Имя',
            style: AppTextStyles.w400size14.copyWith(
              color: AppColors.textColor828282,
            ),
          ),
          const SizedBox(height: 14),
          const EditTextField(
            hintText: 'Oleg',
          ),
          const SizedBox(height: 20),
          Text(
            'Фамилия',
            style: AppTextStyles.w400size14.copyWith(
              color: AppColors.textColor828282,
            ),
          ),
          const SizedBox(height: 14),
          const EditTextField(
            hintText: 'Belotserkovsky',
          ),
          const SizedBox(height: 20),
          Text(
            'Отчество',
            style: AppTextStyles.w400size14.copyWith(
              color: AppColors.textColor828282,
            ),
          ),
          const SizedBox(height: 14),
          const EditTextField(
            hintText: 'Отчество',
          ),
          const SizedBox(height: 50),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.navBarSelect,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: const Text('Сохранить'),
            ),
          ),
        ],
      ),
    );
  }
}
