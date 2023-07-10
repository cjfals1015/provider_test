import 'package:flutter/material.dart';
import 'package:provide_test/fish_model.dart';
import 'package:provide_test/seafish_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FishModel(
            name: 'Salmon',
            number: 10,
            size: 'big',
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => SeaFishModel(
            name: 'Tuna',
            tunaNumber: 10,
            size: 'middle',
          ),
        ),
      ],
      child: const MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fish Order',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'fish name : ${Provider.of<FishModel>(context).name}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const High(),
          ],
        ),
      ),
    );
  }
}

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'spicy A is located in high place',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyA()
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish number : ${Provider.of<FishModel>(context).number}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        Text(
          'fish size : ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Middle()
      ],
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'spicy B is located in high place',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyB()
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tuna number : ${Provider.of<SeaFishModel>(context).tunaNumber}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        Text(
          'fish size : ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<SeaFishModel>(context, listen: false)
                .changeSeaFishNumber();
          },
          child: const Text(
            'Sea fish number',
          ),
        ),
        const Low(),
      ],
    );
  }
}

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'spicy C is located in high place',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SpicyC()
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Fish number : ${Provider.of<FishModel>(context).number}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        Text(
          'fish size : ${Provider.of<FishModel>(context).size}',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<FishModel>(context, listen: false).changeFishNumber();
          },
          child: const Text(
            'Change fish number',
          ),
        ),
      ],
    );
  }
}
