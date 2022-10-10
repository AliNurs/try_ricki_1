import 'package:freezed_annotation/freezed_annotation.dart';
part 'characters_entity.freezed.dart';

@freezed
class CharactersEntity with _$CharactersEntity {
  const factory CharactersEntity({
    // CharacterModel({ this.results}),
    // List<Results>? results,
    // class Results {

    @Default(0) int? id,
    @Default('') String? name,
    @Default('') String? status,
    @Default('') String? species,
    @Default('') String? type,
    @Default('') String? gender,
    // Origin? origin,
    // Origin? location,
    @Default('') String? image,
    @Default(['']) List<String>? episode,
    @Default('') String? url,
    @Default('') String? created,
  }) = _CharactersEntity;
}
