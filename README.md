
Reusable components such as checkbox, radio, buttons, and more, designed for Flutter projects.

## Features
* Checkbox

## Getting started

You should ensure that you add the router as a dependency in your flutter project.
```yaml
dependencies:
 acontplus_widgets: ^0.0.1
```

You should then run `flutter packages upgrade` or update your packages in IntelliJ.

## Example
There is a example project in the example folder. Check it out. Otherwise, keep reading to get up and running.

## Usage

Need to include the import the package to the dart file where it will be used, use the below command,

```dart
import 'package:acontplus_widgets/acontplus_widgets.dart';
```

Basic use widget

```dart
CheckboxWidget(
    isChecked: true,
    onChanged: (value) {},
    title: const Text('Checkbox'),
    checkedColor: Colors.green,
    checkedIcon: const Icon(Icons.close, color: Colors.white),
)
```

Complete example for use

```dart
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
```

