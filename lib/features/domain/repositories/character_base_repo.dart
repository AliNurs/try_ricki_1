// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:try_ricki_1/core/app_error.dart';
import 'package:try_ricki_1/features/data/models/characters_model.dart';
import 'package:try_ricki_1/features/domain/entities/characters_entity.dart';

abstract class CharacterBaseRepo {
  Future<BaseCharacterRepoResponse> getCharacterImpl();
}

class BaseCharacterRepoResponse {
  final AppError? error;
  final CharactersModel? characters;

  BaseCharacterRepoResponse({
    this.error,
    this.characters,
  });
}
