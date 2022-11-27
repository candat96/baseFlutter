import 'package:base_flutter/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_state.dart';
class ThemeCubit extends Cubit<ThemeState> {
    ThemeCubit() : super(ThemeState(themeData: AppTheme.lightTheme));

    void changeTheme(ThemeData theme) {
        final updateTheme = ThemeState(themeData : theme);
        emit(updateTheme);
    }
}
