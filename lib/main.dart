import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';
import 'package:weather_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<WeatherBlocBloc>(
        create: (context) =>
            WeatherBlocBloc()..add(const FetchWeather("Islamabad")),
        child: const HomeScreen(),
      ),
    );
  }
}

# touched on 2025-05-28T21:11:32.148440Z
# touched on 2025-05-28T21:12:13.394123Z