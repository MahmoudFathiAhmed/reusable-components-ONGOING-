import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  const CheckBoxListTileWidget({super.key});

  @override
  State<CheckBoxListTileWidget> createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        value: _isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            _isChecked = newValue;
          });
        },
        activeColor: Colors.orangeAccent,
        checkColor: Colors.white,
        tileColor: Colors.white12,
        title: const Text('title'),
        subtitle: const Text('subtitle'),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
      ),
    );
  }
}
