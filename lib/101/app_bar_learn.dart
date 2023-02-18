import "package:flutter/material.dart";
import "package:flutter/services.dart";

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});

  final String _title = 'Welcome Learn App Bar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.arrow_back_ios_new),
        systemOverlayStyle:SystemUiOverlayStyle.light , // Şarj durumlarının gösterildiği alanı düzeltir
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
         // const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
