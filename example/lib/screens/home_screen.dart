import 'package:flutter/material.dart';
import 'package:acontplus_widgets/acontplus_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxWidget(
            isChecked: true,
            onChanged: (value) {},
            title: const Text('Checkbox'),
            checkedColor: Colors.green,
            checkedIcon: const Icon(Icons.close, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
