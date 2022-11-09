import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:state_app/providers/counter.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<Counter>().number.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            const Gap(30),
            ElevatedButton.icon(
              onPressed: () {
                context.read<Counter>().increment();
                // setState(() {
                //   num = n
                // });
              },
              icon: const Icon(Icons.add),
              label: const Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }
}
