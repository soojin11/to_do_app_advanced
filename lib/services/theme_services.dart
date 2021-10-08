import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  bool _loadThemeFromBox() => _box.read(_key) ?? false; //box의 key 값을 읽어라
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox()
        ? ThemeMode.light
        : ThemeMode.dark); //이 함수를 부르면 처음엔 무조건 false겠지, 그럼 light 반환
    _saveThemeToBox(!_loadThemeFromBox()); //반대의 것을 저장하는 것 !_ 사용
  }
}
