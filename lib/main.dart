import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_neetable/controller/user_list_controller.dart';

import 'view/home_screen/home_screen.dart';
import 'view/user_details_page/user_details_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<UsersListController>().getUsersList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Naetable_Machine_test',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
