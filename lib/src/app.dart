import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import './pages/first_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFF372549),
            fontSize: 16,
          ),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Color(0xff372549),
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFFb75d69),
          ),
        ),
      ),
      dark: ThemeData(
        primaryColor: Color(0xFF1a1423),
        accentColor: Color(0xFFb75d69),
        scaffoldBackgroundColor: Color(0xFF1a1423),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFFedddd4),
            fontSize: 16,
          ),
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Color(0xFFedddd4),
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFFb75d69),
          ),
        ),
      ),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp(
        title: "CodeBook Demos",
        theme: theme,
        darkTheme: darkTheme,
        home: FirstScreen(),
      ),
    );
  }
}

// Dark purple 0xFF1A1423
// Purple 0xFF291B36
// greyish pink 0xFF70485A
// pink 0xFFB75D69
// somewhat wheat 0xFFEACDC2
// wheat 0xFFedddd4
