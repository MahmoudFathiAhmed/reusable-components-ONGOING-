import 'package:flutter/material.dart';
import 'package:my_reusable_components/resources/color_manager.dart';
import 'package:my_reusable_components/widgets/cool_widgets/check_box_list_tile_widget.dart';
import 'package:my_reusable_components/widgets/cool_widgets/interactive_viewer_widget.dart';
import 'package:my_reusable_components/widgets/cool_widgets/long_press_draggable_widget.dart';
import 'package:my_reusable_components/widgets/cool_widgets/reorderable_listview_widget.dart';
import 'package:my_reusable_components/widgets/tables/table_widget.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyBlue,
      body: const TableWidget(
        rowsNumber: 20,
        borderColor: Colors.white30,
        rows: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Title 1',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Title 2',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Title 3',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
        
      ),
      // body: const CheckBoxListTileWidget(),
      // body: const ReOrderableListViewWidget(),
      // body: InterActiveViewerWidget(),
      // body: LongPressDraggableWidget(),
    );
  }
}
