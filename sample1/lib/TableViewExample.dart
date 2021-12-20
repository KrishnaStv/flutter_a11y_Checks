import 'package:flutter/material.dart';

class TableViewSample1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text('TableView Example'),),
          body: DataTableSateLessWidget(),
        ),
      ),
    );
  }

}

class DataTableSateLessWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DataTable(
        columns: [
          DataColumn(label: Text('Name', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue),)),
          DataColumn(label: Text('Score', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blue),)),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('A'),),
            DataCell(Text('12')),
          ],onSelectChanged: (bool? value){
            debugPrint('selected $value index is 1');
          },),
          DataRow(cells: [
            DataCell(Text('B')),
            DataCell(Text('13')),
          ]),
          DataRow(cells: [
            DataCell(Text('c')),
            DataCell(Text('14')),
          ]),
        ]);
  }
}

class TableStateLessWidget extends StatelessWidget {

  late var arroftitles = ["T1","T2","T3"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Table(
      border: TableBorder.all(color: Colors.red),
      columnWidths: const <int,TableColumnWidth>{
        0:FixedColumnWidth(85)
      },
      children: [
       TableRow(
         decoration: BoxDecoration(color: Colors.blueGrey),
         children: [
           Semantics(
             button: true,
             child:Text(arroftitles[0],
               style: TextStyle(color: Colors.white,
                   fontStyle: FontStyle.italic,
                   fontWeight: FontWeight.w100),
             ),
           ),
         ],
       ),
        TableRow(
          children: [
            Text(arroftitles[1]),
          ],
        ),
        TableRow(
          children: [
            Text(arroftitles[2]),
          ],
        ),
      ],
    );
  }
}