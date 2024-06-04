import 'package:flutter/material.dart';
import 'package:flutter_training_project/widget_list/inkwell_widget.dart';
import 'package:flutter_training_project/widget_list/text_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('All Widget List'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              commonButtonWidget(
                context: context,
                title: "Text Widget",
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TextWidget())),
              ),
              commonButtonWidget(
                context: context,
                title: "InkWell Widget",
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const InkWellWidget())),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget commonButtonWidget({required BuildContext context, required String title, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 10),
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.5),
        ),
        child: Text(title),
      ),
    );
  }
}
