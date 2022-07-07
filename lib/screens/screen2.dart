import 'package:flutter/material.dart';


class Screen2 extends StatefulWidget {
   const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with TickerProviderStateMixin  {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 0,animationDuration: Duration(microseconds: 500));
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabs = [
      const Text('A & A & B & B',style: TextStyle(fontSize: 14),),
      const Text('A & A & B & B',style: TextStyle(fontSize: 14),),
      const Text('A & A & B & B',style: TextStyle(fontSize: 14),),
      const Text('A & A & B & B',style: TextStyle(fontSize: 14),),
    ];
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 40,
            elevation: 0,
            backgroundColor: Colors.amber,
            title: Text('Tabs'),
            bottom: TabBar(
              tabs: tabs,
              // controller: controller,
              labelColor: const Color.fromRGBO(4, 2, 46, 1),
              isScrollable: true,
              labelStyle: Theme.of(context).textTheme.headline1,
              indicatorColor: const Color.fromRGBO(4, 2, 46, 1),
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: Colors.greenAccent),
            ),
          ),
          body: TabBarView(
              // controller: controller,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.pinkAccent,
                ),
              ]
          ),
        )
    );

  }
}