import 'package:facebook_flutter/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

/*
 * developed by asalazarj
 */
void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_)=> new NewsService() ),
      ],
      child: MaterialApp(
        title: 'facebook-app',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // English
          const Locale('es', 'ES'), // Spanish
        ],
        initialRoute: 'home',
        routes: getApplicationRoutes(),
        theme: ThemeData(
            primaryColor: Colors.black,
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.blue)),
      ),
    );
  }
}
