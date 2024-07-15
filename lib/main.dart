import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/core/injection/injection.dart';
import 'package:reddit_clone/core/router/router.dart';
import 'package:reddit_clone/core/theme/theme.dart';
import 'package:reddit_clone/observe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // force app to run in portrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Clone',
      theme: darkTheme,
      routerConfig: router,
    );
  }
}
