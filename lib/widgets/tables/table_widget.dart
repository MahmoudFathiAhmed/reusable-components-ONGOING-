import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  final List<TableCell> rows;
  final Color firstRowColor;
  final Color borderColor;
  final int rowsNumber;
  const TableWidget({
    super.key,
    required this.rows,
    this.firstRowColor = Colors.redAccent,
    required this.borderColor,
    required this.rowsNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Table(
            border: TableBorder.all(
              color: borderColor,
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                  decoration: BoxDecoration(
                    color: firstRowColor,
                  ),
                  children: rows),
              ...List.generate(
                  rowsNumber,
                  (index) => const TableRow(
                    children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('cell 1',
                                style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('cell 2',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('cell 3',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
