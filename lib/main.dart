import 'package:cse_organizers_app/pages/home_page.dart';
import 'package:cse_organizers_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:cse_organizers_app/constants.dart' as constants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: constants.title,
      routes: { 
        '/': (context) => const HomePage(title: constants.title),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}


/* 
  To use colors:
      import 'package:cse_organizers_app/constants.dart' as constants;
      
      constants.colors[<name-of-color>]![<number-of-color>]

  To use icons:
      import 'package:cse_organizers_app/presentation/c_s_e_organizers_app_icons.dart';

      CSEOrganizersApp.<name-of-icon>
*/
