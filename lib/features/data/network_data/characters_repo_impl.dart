// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';

import 'package:try_ricki_1/features/domain/repositories/character_base_repo.dart';

class CharactersRepoImpl implements CharacterBaseRepo {
  CharactersRepoImpl({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<BaseCharacterRepoResponse> getCharacterImpl() async {
    final result = await _dio.get('character');
    return BaseCharacterRepoResponse(characters: result.data);
  }

  // Future<BaseCharacterRepoResponse> getCharacterImpl(required String name, required int currentPage) async {
  //   return await dio.get('/character/',queryParameters: {'name':name,});

  // final data = result.data['result'] as List;
  // final model = data.map((e) => CharactersModel.fromJson(e)).toList();
  // log(' $model');

  // return BaseCharacterRepoResponse(
  //   characters: model,
  //   error: AppError(
  //     // Обработывать обьязательно !
  //     statusCode: 404,
  //     text: DioErrorType.other.toString(),
  //   ),
  // );
}
