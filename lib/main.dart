import 'package:dice/utils/mobx/app_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice App',
      home: ProviderWidget(),
    );
  }
}

class ProviderWidget extends StatelessWidget {
  const ProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => AppState(),
        ),
      ],
      child: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<AppState>();
    return Scaffold(
      body: Center(
        child: Observer(
          builder: (_) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: state.rollLeft,
                      child: Image.asset(
                        'assets/images/${state.diceLeft}.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: state.rollRight,
                      child: Image.asset(
                        'assets/images/${state.diceRight}.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Text('total: ${state.total}'),
              ],
            );
          }
        ),
      ),
    );
  }
}
