import 'package:ders1/101/padding_learn.dart';
import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Learn View'),
      ),
      body: Padding(
        padding: ProjectPadding.pagePaddingHorizontal +
            const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            _CustomCard(
              child: Center(
              child: Text(
            'Tolga',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black),
          )),
            ),
            Card(
              color: Theme.of(context).colorScheme.error,
              shape: const CircleBorder(),
              child: const SizedBox(width: 100, height: 100),
            ),
            Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const SizedBox(width: 500, height: 100)),
          ],
        ),
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    super.key,
    required this.child
  });

final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: const StadiumBorder(),
        child: SizedBox(
          width: 500,
          height: 100,
          child:child,
        ));
  }
}

// Borders 
 // -> StadiumBorder
 // -> CircleBorder
 // -> RoundedRectangleBorder
