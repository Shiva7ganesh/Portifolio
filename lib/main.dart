import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shivaportfolio/providers/current_state.dart';
import 'package:shivaportfolio/providers/theme_provider.dart';
import 'screen/home_screen/home_page.dart';
void main(){
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context)=> CurrentState()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
