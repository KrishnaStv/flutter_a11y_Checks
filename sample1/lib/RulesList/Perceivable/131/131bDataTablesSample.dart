import 'package:sample1/importFiles.dart';

class DataTableSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DataTableSampleState();
  }

}

class DataTableSampleState extends State<DataTableSample> {
  final String ruleDescription =
      'Data cells MUST be explicitly associated with header cells (column,'
      ' row headers) for data tables. Descriptive table/cell captions '
      'and summaries may be provided where appropriate. '
      'Providing the same helps a VoiceOver user perceive the cell '
      'data in the context of header cell info.';
  final String geDescription = ' Sample implementation below shows a meaningful'
      ' header cell (column and row) association when cell '
      'data is announced by VoiceOver. \n The implementation uses TableView '
      'and CollectionView for list representation. \n In table view cells,'
      ' we can add any Widgets as subview. There are two ways to'
      ' add accessibility to table view cells. \n  1.Over all Cell is not '
      'accessible. We can set semantic label property for each row '
      'data along with header details. \n  2.Over all Cell is accessible '
      'We can use MergeSemantics Widget along with each cell Semantic label properties,'
      'then over row will read at once by screen reader.';
  final String beDescription = 'If row widgets is accessible, but '
      'Semantic label is linked with  row headers, then  VoiceOver will announce as row data only.';
  final String codeSnippet = '\n //1.First row: each cell item accessible. \n  Row( \n mainAxisAlignment: MainAxisAlignment.spaceEvenly, \n children: [ \n Semantics( \n label: \'Company: \', \n child: Text(\'Maruthi\'), \n ), \n Semantics( \n label: \'June 2018 cost:\',\n child: Text(\'1.34L\'), \n ),\n Semantics( \n label: \'June 2019 cost\', \n child: Text(\'1.10L\'), \n ), \n ],\n ), \n '
      '//2.Second row: over row is accessible at a time. \n  MergeSemantics( \n child: Row( \n mainAxisAlignment: MainAxisAlignment.spaceEvenly, \n children: [ \n Semantics( \n label: \'Company: \', \n child: Text(\'Hundai\'), \n ), \n Semantics( \n label: \'June 2018 cost:\', \n child: Text(\'0.45L\'), \n ), \n Semantics( \n label: \'June 2019 cost:\', \n child: Text(\'0.42L\'), \n ), \n ], \n ), \n)';

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.DataTables.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.DataTables.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    HeaderSemanticWithText('Good Example: Datatable with an'
                        ' appropriately described header cell association '
                        'using Semantic label description'),
                    Text(geDescription),
                  ],
                )
            ),
           Container(
             padding: EdgeInsets.only(left: 15,right: 15),
             child:  Center(
               child: Column(
                 children: [
                   Divider(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Semantics(
                         header: true,
                         child: Text('Company'
                           , style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                       ),
                       Semantics(
                         header: true,
                         child: Text('Jun 2018'
                           , style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                       ),
                       Semantics(
                         header: true,
                         child: Text('Jun 2019'
                           , style: TextStyle(fontWeight: FontWeight.bold),
                         ),
                       ),
                     ],
                   ),
                   Divider(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Semantics(
                         label: 'Company: ',
                         child: Text('Maruthi'),
                       ),
                       Semantics(
                         label: 'June 2018 cost:',
                         child: Text('1.34L'),
                       ),
                       Semantics(
                         label: 'June 2019 cost',
                         child: Text('1.10L'),
                       ),
                     ],
                   ),
                   Divider(),
                   MergeSemantics(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Semantics(
                           label: 'Company: ',
                           child: Text('Hundai'),
                         ),
                         Semantics(
                           label: 'June 2018 cost:',
                           child: Text('0.45L'),
                         ),
                         Semantics(
                           label: 'June 2019 cost:',
                           child: Text('0.42L'),
                         ),
                       ],
                     ),
                   ),
                   Divider(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Semantics(
                         label: 'Company: ',
                         child: Text('Hundai'),
                       ),
                       Semantics(
                         label: 'June 2018 cost:',
                         child: Text('0.45L'),
                       ),
                       Semantics(
                         label: 'June 2019 cost:',
                         child: Text('0.42L'),
                       ),
                     ],
                   ),
                   Divider(),
                 ],
               ),
             ),
           ),
            CodeSinppetWidget(codeSnippet: codeSnippet),
            SizedBox(height: 25,),
            Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    HeaderSemanticWithText('Bad Example: TableView implementation'
                        ' without an appropriate data cell, header cell '
                        'association in semantic label description.'),
                    Text(beDescription),
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:  Center(
                child: Column(
                  children: [
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Semantics(
                          child: Text('Company'
                            , style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Semantics(
                          child: Text('Jun 2018'
                            , style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Semantics(
                          child: Text('Jun 2019'
                            , style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Semantics(
                          child: Text('Maruthi'),
                        ),
                        Semantics(
                          child: Text('1.34L'),
                        ),
                        Semantics(
                          child: Text('1.10L'),
                        ),
                      ],
                    ),
                    Divider(),
                    MergeSemantics(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Semantics(
                            child: Text('Hundai'),
                          ),
                          Semantics(
                            child: Text('0.45L'),
                          ),
                          Semantics(
                            child: Text('0.42L'),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Semantics(
                          child: Text('Hundai'),
                        ),
                        Semantics(
                          child: Text('0.45L'),
                        ),
                        Semantics(
                          child: Text('0.42L'),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
