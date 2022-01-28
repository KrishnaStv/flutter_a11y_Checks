import 'package:sample1/importFiles.dart';

class MissingInstructionsSample extends StatelessWidget {

  final String ruleDescription =
      '  Sufficient instructions for form field elements MUST be provided.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.MissingInstructions.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.MissingInstructions.name),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
           Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Good Example'),
                    ),
                    Text('The sample below adds an extra text (required) '
                        'to labels of form controls to communicate additional'
                        ' information if the fields are required.'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Start Date (Provide in DDMMYYYY format)',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                    ),
                    TextField(
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: "Enter Start Date",
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 25,),
            Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Bad Example'),
                    ),
                    Text('The sample below misses the instructions to '
                        'use the field correctly. In the Start Date'
                        ' field below, an additional instruction on'
                        ' the expected input format is missing'),
                    SizedBox(height: 15,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Start Date',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
                    ),
                    TextField(
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: "Enter Start Date",
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}