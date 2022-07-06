import 'package:flutter/material.dart';

class DummyTable extends StatelessWidget {
  final Color tableBackgroundColor;
  final double radius;
  const DummyTable({
    Key? key, required this.tableBackgroundColor, required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color: tableBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(radius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Table Name',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 16,
              horizontalMargin: 0,
              columns: const [
                DataColumn(label: Text('First Column Name',)),
                DataColumn(label: Text('Second Column Name',)),
                DataColumn(label: Text('Third Column Name',)),
              ],
              rows: List.generate(demoTableContent.length, (index) => tableNameDataRow(demoTableContent[index])),
            ),
          ),
        ],
      ),
    );
  }
}
DataRow tableNameDataRow(TableContent tableContent) {
  return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
            Icon(tableContent.icon),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(tableContent.title!),
              ),
            ],
          ),
        ),
        DataCell(Text(tableContent.date!)),
        DataCell(Text(tableContent.size!)),
      ]
  );
}

class TableContent {
  final IconData icon;
  final String? title, date, size;

  TableContent({required this.icon, this.title, this.date, this.size});
}

List <TableContent> demoTableContent = [
  TableContent(
    icon: Icons.add,
    title: 'Add',
    date: "01-03-2021",
    size: "3.5mb",
  ),
  TableContent(
    icon: Icons.remove,
    title: 'Remove',
    date: "27-02-2021",
    size: "19.0mb",
  ),
  TableContent(
    icon: Icons.help,
    title: 'Help',
    date: "23-02-2021",
    size: "32.5mb",
  ),
  TableContent(
    icon: Icons.sunny,
    title: 'Sunny',
    date: "21-02-2021",
    size: "3.5mb",
  ),
  TableContent(
    icon: Icons.dark_mode,
    title: 'Dark Mode',
    date: "23-02-2021",
    size: "2.5gb",
  ),
  TableContent(
    icon: Icons.facebook,
    title: 'Facebook',
    date: "25-02-2021",
    size: "3.5mb",
  ),
  TableContent(
    icon: Icons.folder,
    title: 'Folder',
    date: "25-02-2021",
    size: "34.5mb",
  ),
];