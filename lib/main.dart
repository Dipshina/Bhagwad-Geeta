import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_divine_song/MainProvider.dart';
import 'package:the_divine_song/apiCall/APICall.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: mainProvider.themeMode,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const APICall(),
    );
  }
}
