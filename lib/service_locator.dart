import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:try_ricki_1/features/data/network_data/characters_repo_impl.dart';
import 'package:try_ricki_1/features/data/network_data/dio_settings.dart';
import 'package:try_ricki_1/features/domain/repositories/character_base_repo.dart';
import 'package:try_ricki_1/features/domain/usecases/character_case.dart';
import 'package:try_ricki_1/features/presentation/bloc/characters/characters_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final SharedPreferences=await SharedPreferences.getInstance

  /// Repository
  sl.registerLazySingleton<DioSettings>(
    () => DioSettings(),
  );

  sl.registerLazySingleton<CharacterBaseRepo>(
    () => CharactersRepoImpl(dio: sl<DioSettings>().dio),
  );

  /// UseCases
  sl.registerLazySingleton(
    () => CharactersCase(repo: sl()),
  );
  // sl.registerLazySingleton<AuthCase>(
  //   () => AuthCase(
  //     prefs: sl(),
  //     deviceInfo: sl(),
  //     storage: sl(),
  //   ),
  // );

  /// BloCs / Cubits
  sl.registerFactory(
    () => CharactersCubit(usecase: sl()),
  );
//   sl.registerFactory<GlobalCubit>(
//     () => GlobalCubit(
//       prefs: sl(),
//       deviceInfo: sl(),
//       storage: sl(),
//     ),
//   );
}
