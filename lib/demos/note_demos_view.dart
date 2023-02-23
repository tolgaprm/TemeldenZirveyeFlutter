import 'package:ders1/101/image_learn.dart';
import 'package:ders1/101/stateless_widget_learn.dart';
import 'package:flutter/material.dart';

class NoteDemoView extends StatelessWidget {
  const NoteDemoView({super.key});
  final _title = 'Create your first note';
  final _description = "Add a note about everything";
  final _createNote = 'Create a note';
  final _importNotes = 'Import notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBooks),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.veriticalPadding,
              child: _SubtitleWidget(
                subtitleText: _description * 5,
              ),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                  height: ButtonHeights.buttonNormalHeight,
                  child: Center(
                      child: Text(_createNote,
                          style: Theme.of(context).textTheme.titleMedium)),
                )),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget(
      {super.key,
      this.textAlign = TextAlign.center,
      required this.subtitleText});
  final String subtitleText;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitleText,
      textAlign: textAlign,
      style:
          Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets veriticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
