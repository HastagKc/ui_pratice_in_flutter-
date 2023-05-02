import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:riverpod_learning_app/Providers/count_provider.dart';

// types of provider use in riverpod
//1 Provider

// create a provider
final nameProvider = Provider<String>((ref) => 'Kshittiz');

// final timeProvider = Provider((ref) => DateTime.now());

void main() {
  // first wrap with ProviderScope to root widget
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Consumer(builder: (context, ref, child) {
          // final date = ref.watch(timeProvider);
          final name = ref.watch(nameProvider);

          DateTime now = DateTime.now();
          return now.hour > 12
              ? Text('Good afternoon ${name}')
              : Text('Good Morning ${name}');
        }),
      ),
      floatingActionButton: Consumer(builder: (context, ref, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                ref.read(countProvider).increment();
              },
              child: Icon(Icons.add),
            ),
            const SizedBox(
              width: 20.0,
            ),
            FloatingActionButton(
              onPressed: () {
                ref.read(countProvider).decrement();
              },
              child: Icon(Icons.remove),
            ),
          ],
        );
      }),
      body: SafeArea(
        child: Consumer(builder: (context, ref, child) {
          final name = ref.watch(nameProvider);
          final numberCount = ref.watch(countProvider).number;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${name}',
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${numberCount}',
                  style: const TextStyle(
                    fontSize: 44.0,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
