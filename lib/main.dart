import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seminar_app/routes.dart';
import 'package:seminar_app/screens/content/content_screen.dart';
import 'package:seminar_app/styles/theme/theme.dart';
import 'package:seminar_app/styles/theme/application/theme_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, themeState) {
          return MaterialApp(routes: myRoutes,
            debugShowCheckedModeBanner: false,             
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeState,
            home: const ContentScreen(),
          );
        },
      ),
    );
  }
}
