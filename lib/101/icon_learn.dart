import "package:flutter/material.dart";

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Learn View'),
      ),
      body: Column(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined))
        ],
      ),
    );
  }
}
