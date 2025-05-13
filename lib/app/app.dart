import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_highlights/app/router.dart';
import 'package:football_highlights/app/theme.dart';
import 'package:football_highlights/src/presentation/main/bloc/bottom_navigation_bloc.dart';
import 'package:football_highlights/src/presentation/main_videos/bloc/videos_bloc.dart';
import 'package:football_highlights/src/presentation/main_videos/data/repository_impl/videos_repository_impl.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavigationBloc()),
        BlocProvider(create: (context) => VideosBloc(VideosRepositoryImpl())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Video Player',
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        routerConfig: router,
      ),
    );
  }
}