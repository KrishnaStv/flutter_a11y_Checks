import 'package:sample1/importFiles.dart';

class NonTextContrastStatesActiveUI extends StatelessWidget {

  final String ruleDescription =
      'The visual state of an active user interface component must have '
      'sufficient contrast of 3 to 1 with the adjacent background.'
      ' Exceptions exist.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.NonTextContrastStateofUI.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.NonTextContrastStateofUI.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: HeaderSemanticWithText('Good Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('For any input action buttons, maintain boundaries to detect the tap area'),
                    Row(
                      children: [
                        Semantics(
                          child: Checkbox(value: true,
                              side: const BorderSide(
                                // set border color here
                                width: 2,
                                color: Colors.blue,
                              ),
                              onChanged: (bool? value)  {
                              }),
                          label: 'I Accept Terms and Conditions',
                          value: 'Selected',
                        ),
                        Text('I Accept Terms and Conditions')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: HeaderSemanticWithText('Bad Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('For any input action buttons, maintain boundaries to detect the tap area'),
                    Row(
                      children: [
                        Semantics(
                          child: Checkbox(value: true,
                              checkColor: Colors.white,
                              activeColor: Colors.black12,
                              side: const BorderSide(
                                // set border color here
                                width: 2,
                                color: Colors.black12,
                              ),
                              onChanged: (bool? value)  {
                              }),
                          value: 'Selected',
                          label: 'I Accept Terms and Conditions',
                        ),
                        Text('I Accept Terms and Conditions')
                      ],
                    ),
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
