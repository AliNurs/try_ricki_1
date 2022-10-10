import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:try_ricki_1/features/data/models/characters_model.dart';

import 'package:try_ricki_1/features/domain/usecases/character_case.dart';

part 'characters_cubit.freezed.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit({required CharactersCase usecase})
      : _usecase = usecase,
        super(CharactersState.loading());

  final CharactersCase _usecase;
  getCharacters() async {
    emit(CharactersState.loading());
    Future.delayed(
      Duration(seconds: 2),
    );

    final result = await _usecase.getCharacter();

    if (result.characters != null) {
      emit(CharactersState.succes(result.characters));
    } else {
      emit(CharactersState.error());
    }
  }
}

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = _Initial;

  const factory CharactersState.loading() = _Loading;

  const factory CharactersState.succes(CharactersModel? characters) = _$_Succes;

  const factory CharactersState.error() = _Error;
}
