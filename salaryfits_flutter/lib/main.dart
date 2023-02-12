import 'package:flutter/material.dart';
import 'package:salaryfits_flutter/Pages/detail_card.dart';
import 'package:salaryfits_flutter/Pages/home.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salary Fits App',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        DetailPage.routeName: (context) => const DetailPage(), // rota nomeada com parâmetros
      },
      theme: ThemeData(
        primaryColor: const Color(0xFFF5C600),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
