import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  final String name = "Tolga";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ('Welcome $name ${name.length}'),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(('Hello $name ${name.length}'),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: ProjectStyles.welcomeStyle),
          Text(('Hello $name ${name.length}'),
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.yellow)),
        ],
      ),
    ));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      fontSize: 16,
      letterSpacing: 3,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.red,
      fontWeight: FontWeight.w600);
}
