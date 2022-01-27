import 'package:sample1/importFiles.dart';

class HeadingsSample extends StatelessWidget {

  final String ruleDescription =
      'All headings must be marked up to be identifiable'
      ' by screen readers to help users perceive'
      ' the structure of the screen content and to navigate between headings. \n '
      'Using Semantics header property we can update trait as header';
  final String codeSnippet = 'Semantic Label : \n '
      'Semantics('
      'child: Text(\'Custom View Example\'),'
      'header: true ,) \n';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.Headings.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.Headings.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Semantics(
              header: true,
              child: Container(
                height: 65,
                width: 250,
                color: Colors.blue,
                child: Column(
                  children: [
                    Text('Using CustomView as App Bar',style: TextStyle(color: Colors.white),),
                   SizedBox(height: 15,),
                   Container(
                     alignment: Alignment.center,
                     height: 25,
                     color: Colors.blueAccent,
                     child:  Semantics(
                       child: Text('Custom View Example',style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold
                       ),),
                       header: true,
                     ),
                   ),
                  ],
                ),
              )
            ),
            SizedBox(height: 15,),
            CodeSinppetWidget(codeSnippet: codeSnippet),
          ],
        ),
      ),
    );
  }
}