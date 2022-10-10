// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:try_ricki_1/features/domain/repositories/character_base_repo.dart';

class CharactersCase {
  CharactersCase({required CharacterBaseRepo repo}) : _baseRepo = repo;
  final CharacterBaseRepo _baseRepo;

  Future<BaseCharacterRepoResponse> getCharacter() async {
    return await _baseRepo.getCharacterImpl();
  }
}
