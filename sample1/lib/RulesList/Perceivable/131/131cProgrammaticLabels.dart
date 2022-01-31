import 'package:sample1/importFiles.dart';

class ProgrammaticLabelSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProgrammaticLabelState();
  }

}

class ProgrammaticLabelState extends State<ProgrammaticLabelSample> {
  final String ruleDescription =
      'Labels MUST be programmatically associated with form '
      'input elements using Semantics label attribute.';
  final String geDescription = 'Find some sample implementations, for input'
      ' fields. EmailId input text field, For Email input hint,'
      ' the text field must be sync with the programmatic label.'
      ' VoiceOver will announce as \'Enter your email, text field\'.';
  final String beDescription = 'Find some sample implementations, for input'
      ' fields. EmailId text field, For Email input hint,'
      ' the text field not sync with the programmatic label.'
      ' VoiceOver will announce as \'Enter First name, text field\'.';

  final String codeSnippet = '\n Semantic Label : \n '
      'Semantics('
      'child: widgetObject,'
      ' label: \'I accept Terms and Conditions\',) \n ';

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.InfoRelationShipProgrammaticLabels.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.InfoRelationShipProgrammaticLabels.name),
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
                    HeaderSemanticWithText('Good Example: for every input fields'
                        ' must add hint value, it will read by screen reader.'),
                    Text(geDescription),
                  ],
                )
            ),
            Container(
              child: Column (
                children: [
                  Row(
                    children: [
                    Semantics(
                      child:  Text('Email Id',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      header: true,
                    )
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
            Divider(),
           Row(
                children: [
                 Semantics(
                   label: 'I accept Terms and Conditions ',
                   button: true,
                   value: isChecked ? 'Selected' : 'Not selected',
                   child:  Checkbox(value: isChecked,
                       onChanged: (bool? value) {
                         setState(() {
                           isChecked = isChecked ? false : true;
                         });
                       }),
                 ),
                  Text('I accept Terms and Conditions'),
                ],
            ),
            SizedBox(height: 10,),
            CodeSinppetWidget(codeSnippet: codeSnippet),
            SizedBox(height: 25,),
            Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    HeaderSemanticWithText('Bad Example: for form inputs and'
                        ' any input selection hint value does n\'t associate '
                        'with programmatic label'),
                    Text(geDescription),
                  ],
                )
            ),
            Container(
              child: Column (
                children: [
                  Row(
                    children: [
                      Semantics(
                        child:  Text('Email Id',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        header: true,
                      )
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter First name',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
