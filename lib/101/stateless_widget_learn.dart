import 'package:flutter/material.dart';

class StatelesLearnWidget extends StatelessWidget {
  const StatelesLearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stateless Learn'),
        ),
        body: Column(
          children:const [
            TextTitleWidget(text: 'Hello'),
            TextTitleWidget(text: 'I am Tolga.'),
            TextTitleWidget(text: 'Data'),
            _CustomContainer()
          ]
          )
          );
          
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.amber)
      );
  }
}

class TextTitleWidget extends StatelessWidget {
  const TextTitleWidget({super.key, required this.text});
  // const TextTitleWidget(this.text,{super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
