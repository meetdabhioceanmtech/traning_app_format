import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({super.key});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
      ),
      body: const WidgetWithCodeView(
        filePath: "lib/widget_list/text_widget.dart",
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Test Data'),
              Text(
                'Test Data',
                style: TextStyle(color: Colors.red),
              ),
              Text(
                'Test Data',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
