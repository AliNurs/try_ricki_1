import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:try_ricki_1/features/data/network_data/characters_repo_impl.dart';
import 'package:try_ricki_1/features/data/network_data/dio_settings.dart';
import 'package:try_ricki_1/features/domain/repositories/character_base_repo.dart';
import 'package:try_ricki_1/features/domain/usecases/character_case.dart';
import 'package:try_ricki_1/features/presentation/bloc/characters/characters_cubit.dart';
import 'package:try_ricki_1/features/presentation/screens/splash/splash_screen.dart';
import 'package:try_ricki_1/features/theme/app_theme.dart';
import 'package:try_ricki_1/service_locator.dart' as di;

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RickiMorty',
      theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: SplashScreen(),
    );
  }
}

class InitWidget extends StatelessWidget {
  const InitWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioSettings()),
        RepositoryProvider(
          create: (context) => CharactersRepoImpl(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CharactersCubit(
              usecase: CharactersCase(
                repo: RepositoryProvider.of<CharactersRepoImpl>(context),
              ),
            )..getCharacters(),
          ),
        ],
        child: child,
      ),
    );
  }
}
