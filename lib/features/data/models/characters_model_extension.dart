import 'package:try_ricki_1/features/domain/entities/characters_entity.dart';

extension CharactersModel on CharactersEntity {
  CharactersEntity fromJson(
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    String? image,
    List<String>? episode,
    String? url,
    String? created,
  ) {
    return CharactersEntity(
      id: id,
      name: name,
      species: species,
      status: status,
      type: type,
      gender: gender,
      image: image,
      episode: episode,
      url: url,
      created: created,
      // id: data['id'] ?? 0,
      // name: data['name'] ?? '',
      // status: data['status'] ?? '',
      // species: data['species'] ?? '',
      // type: data['type'] ?? '',
      // gender: data['gender'] ?? '',
      // image: data['image'] ?? '',
      // episode: data[['episode']] ?? [''],
      // url: data['url'] ?? '',
      // created: data['created'] ?? '',

      // cashierName: data['cashierName'] ?? '',
      // fdDocNumber: data['fdDocNumber'] ?? '',
      // fdFormedDate: data['fdFormetDate'] ?? '',
      // ffdNumber: data['ffdNumber'] ?? '',
      // fiscalFeutureDoc: data['fiscalFeatureDoc'] ?? '',
      // fmNumber: data['fmNumber'] ?? '',
      // innNumber: data['innNumber'] ?? '',
      // paymentAddress: data['paymentAddress'] ?? '',
      // regNumberKkm: data['regNumberKkm'] ?? '',
      // shiftOrderNum: data['shiftOrderNum'] ?? 0,
      // storeName: data['storeName'] ?? 0,
    );
  }
}
