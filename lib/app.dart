import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tfserving_example_app/presentation/widgets/custom_tab_bar.dart';

import 'bloc/toggle_button_bloc/toggle_button_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggleButtonCubit(),
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Skin lesion detection",
      theme: ThemeData(
        cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
        Radius.circular(25.0),
    ),),),
        colorScheme: ColorScheme(
            surface: Colors.white70,
            onSurface: Colors.black,
            primary: Color.fromRGBO(200, 158, 133, 1),
            onPrimary: Colors.white,
            secondary: Colors.white,
            onSecondary: Colors.black,
            tertiary: Color.fromRGBO(255, 204, 128, 1),
            error: Colors.red,
            outline: Color(0xFF424242),
            brightness: Brightness.light,
            onError: Colors.red),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(200, 158, 133, 1),
          surfaceTintColor: Colors.white,
          actionsIconTheme: const IconThemeData(color: Colors.white),
        ),
      ),
      home: const PersistentTabScreen(),
    );
  }
}