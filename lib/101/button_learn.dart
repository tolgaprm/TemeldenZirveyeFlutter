import "package:flutter/material.dart";

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: const Text('Text Button')),
          ElevatedButton(
            onPressed:
                () {}, // OnPressed özelliğine null verirsek enabled false oluyor.,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              'Elevated Button',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          OutlinedButton(
              onPressed: () {}, child: const Text('Outlined Button')),

          OutlinedButton.icon(
              onPressed: () {}, icon: Icon(Icons.logo_dev), label: Text("Dev")),
          // Bir text'e özel bir onTap özelliği InkWell ile yapılabilir.
          InkWell(onTap: () {}, child: const Text('Custom')),

          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Text(
                "Place Bid",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
