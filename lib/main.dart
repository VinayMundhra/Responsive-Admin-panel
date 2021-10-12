import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iaminworld/constants.dart';
import 'package:iaminworld/controlllers/menu_controller.dart';
import 'package:iaminworld/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [ChangeNotifierProvider(
          create: (ctx) => MenuController()
          )
          ],
          child: const HomePage(),
      ),
      debugShowCheckedModeBanner: false,
      title: 'IamInworld',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
    );
  }
}
