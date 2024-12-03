import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tee_bay/core/app_theme/theme_controller/theme_state.dart';
import 'package:tee_bay/core/app_theme/theme_repository/theme_repository.dart';

import '../app_theme.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final ThemeRepository _repository;

  ThemeCubit(this._repository)
      : super(ThemeState(
          themeData:
              _repository.isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
          isDarkMode: _repository.isDarkMode,
        ));

  void toggleTheme() {
    final isDarkMode = !_repository.isDarkMode;
    _repository.saveTheme(isDarkMode);
    emit(ThemeState(
      themeData: isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      isDarkMode: isDarkMode,
    ));
  }
}
