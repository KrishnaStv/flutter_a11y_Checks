import 'package:flutter/material.dart';
import 'package:sample1/Extensions/Extensions.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';

class TabbarControllerSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new TabbarControllerSampleState();
  }
}

class TabbarControllerSampleState extends State<TabbarControllerSample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedTab = 0;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'TabBar Example', enableBack: true)),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height /2,
              child: Center(child: Text("Profile"),),
              color: Colors.blue,
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              tabs: [
                Semantics(
                  selected: selectedTab == 0 ? true : false,
                  label: 'People',
                  child: Tab(
                    icon: Icon(Icons.people),
                  ),
                ),
                Semantics(
                  selected: selectedTab == 1 ? true : false,
                  label: 'Person',
                  child: Tab(
                    icon: Icon(Icons.person),
                  ),
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [Text('people'), Text('Person')],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}