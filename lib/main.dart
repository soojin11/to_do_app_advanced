import 'package:flutter/material.dart';
import 'package:flutter_todo_app/UI/home_page.dart';
import 'package:flutter_todo_app/db/db_helper.dart';
import 'package:flutter_todo_app/services/theme_services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'UI/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: HomePage(),
    );
  }
}
