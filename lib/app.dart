import 'package:base_flutter/app.dart';
import 'package:base_flutter/cubit/app_provider.dart';
import 'package:base_flutter/l10n/language_constant.dart';
import 'package:base_flutter/pages/auth/login_screen.dart';
import 'package:base_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_flutter/cubit/theme/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    // AppProvider appProvider = AppProvider(context: context);
    return AppProvider(
        child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => MaterialApp(
        title: 'Flutter Demo',
        theme: state.themeData,
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    )
    );
  }
  }

// final cubit = context.read<ThemeCubit>();
// cubit.changeTheme(AppTheme.darkTheme);
