import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox
              .shrink(), // Sadece boş bir alan yaratrmak için kullanılır
          SizedBox.square(
            dimension: 50,
            child: Text('s' * 100),
          ),
          Container(
            height: 50,
            //color: Colors.red, Eğer decaration kullanılırsa bunu decaratin içerisinde vermemiz gerekir.
            constraints: const BoxConstraints(maxWidth: 150, minWidth: 100),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(30),
            decoration: ProjectBoxDecoraiton(),
            child: const Text('ddddd'),
          )
        ],
      ),
    );
  }
}

class ProjectBoxDecoraiton extends BoxDecoration {
  ProjectBoxDecoraiton()
      : super(
            //color: Colors.red,
            gradient: LinearGradient(colors: [Colors.blue, Colors.yellow]),
            borderRadius: BorderRadius.circular(10),
            //shape: BoxShape.circle
            border: Border.all(width: 5));
}
