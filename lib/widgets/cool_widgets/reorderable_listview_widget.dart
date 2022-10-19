import 'package:flutter/material.dart';

class ReOrderableListViewWidget extends StatefulWidget {
  const ReOrderableListViewWidget({Key? key}) : super(key: key);

  @override
  State<ReOrderableListViewWidget> createState() =>
      _ReOrderableListViewWidgetState();
}

class _ReOrderableListViewWidgetState extends State<ReOrderableListViewWidget> {
  List<int> items = List<int>.generate(30, (index) => index);
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: ((oldIndex, newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      }),
      children: List.generate(
        items.length,
        (index) => ListTile(
          key: Key('$index'),
          tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
          title: Text('Item ${items[index]}'),
          trailing: const Icon(Icons.drag_handle_sharp),
        ),
      ),
    );
  }
}
