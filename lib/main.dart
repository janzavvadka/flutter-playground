import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/bloc/counter/counter_cubit.dart';
import 'package:flutter_bloc_counter/screens/home_screen.dart';
import 'package:flutter_bloc_counter/screens/second_screen.dart';
import 'package:flutter_bloc_counter/screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bloc counter',
      routes: {
        "/": (context) => BlocProvider.value(
              value: _counterCubit,
              child: BlocProvider.value(
                value: _counterCubit,
                child: HomeScreen(
                  title: 'FirstScreen',
                ),
              ),
            ),
        "/second": (context) => BlocProvider.value(
              value: _counterCubit,
              child: BlocProvider.value(
                value: _counterCubit,
                child: SecondScreen(
                  title: 'SecondScreen',
                ),
              ),
            ),
        "/third": (context) => BlocProvider.value(
              value: _counterCubit,
              child: BlocProvider.value(
                value: _counterCubit,
                child: ThirdScreen(
                  title: 'ThistdScreen',
                ),
              ),
            ),
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }

  Route onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: 'FirstScreen',
          ),
        );
        break;
      case "/second":
        return MaterialPageRoute(
          builder: (_) => SecondScreen(
            title: 'SecondScreen',
          ),
        );
        break;
      case "/third":
        return MaterialPageRoute(
          builder: (_) => ThirdScreen(title: 'ThistdScreen'),
        );
        break;
    }
  }

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }
}
