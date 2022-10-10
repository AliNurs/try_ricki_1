// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_ricki_1/features/data/network_data/characters_repo_impl.dart';
import 'package:try_ricki_1/features/data/network_data/dio_settings.dart';
import 'package:try_ricki_1/features/domain/repositories/character_base_repo.dart';
import 'package:try_ricki_1/features/domain/usecases/character_case.dart';
import 'package:try_ricki_1/features/presentation/bloc/characters/characters_cubit.dart';
import 'package:try_ricki_1/features/presentation/screens/characters/character_detail_screen/character_detail_screen.dart';

import 'package:try_ricki_1/features/presentation/widgets/app_text_field.dart';
import 'package:try_ricki_1/features/theme/app_text_styles.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';
import 'package:try_ricki_1/service_locator.dart';

part 'character_grid_item/character_grid_item.dart';
part 'character_list_item/character_list_item.dart';

class ListCharacterScreen extends StatefulWidget {
  ListCharacterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ListCharacterScreen> createState() => _ListCharacterScreenState();
}

class _ListCharacterScreenState extends State<ListCharacterScreen> {
  final bool isGrid = true;

  final _cubit = sl<CharactersCubit>();

  @override
  void initState() {
    CharactersCubit(usecase: sl<CharactersCase>()).getCharacters();
    // CharactersRepoImpl(dio: DioSettings().dio).getCharacterImpl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightFCFCFC,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 18, left: 16, right: 16),
          child: BlocProvider.value(
            value: _cubit,
            child: BlocBuilder<CharactersCubit, CharactersState>(
              bloc: _cubit,
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
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
                  succes: (characters) => Column(
                    children: [
                      const AppTextField(hintText: 'Найти Персонажа'),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            // 'Всего персонажей: 200'.toUpperCase(),
                            characters!.results?.first.name ?? '',
                            style: AppTextStyles.w500size10.copyWith(
                              color: AppColors.textColor828282,
                            ),
                          ),
                          const SizedBox(width: 165),
                          IconButton(
                            onPressed: () {
                              isGrid != isGrid;
                            },
                            icon: isGrid
                                ? const Icon(Icons.grid_view_outlined)
                                : const Icon(Icons.format_list_bulleted),
                          ),
                        ],
                      ),
                      Expanded(
                        // ignore: dead_code
                        child: isGrid
                            ? const CharacterGridItem()
                            : const CharacterListItem(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
