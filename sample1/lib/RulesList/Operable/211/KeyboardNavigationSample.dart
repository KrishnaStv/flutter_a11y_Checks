import 'package:sample1/importFiles.dart';

class KeyboardNavigationSample extends StatelessWidget {
  final String ruleDescription =
      'All the elements/components on the screen and their functionalities '
      'MUST be available for screen reader users too as for a normal user.';
  final String becodeSnippet =
      '\n Semantics( \n child: widgetObject \n excludeSemantics: true \n)';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.KayboardNavigation.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.KayboardNavigation.name),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText(
                          'Good Example: Making sure controls'
                          ' and functionalities are available for '
                          'a VoiceOver and screen reader users.'),
                    ),
                    Text('By default for all widgets excludeSemantics is false,'
                        ' if we want to disable any widget for VoiceOver we can enable it.'),
                    Text(' For the below example, all UIElements '
                        'are accessible for VoiceOver.'),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Email Id'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Email Id",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        child: ElevatedButton(
                          child: const Text("UnSubscribe"),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Semantics(
                        child: ElevatedButton(
                          child: const Text("Subscribe"),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Bad Example: Controls and'
                          ' functionality not available when VoiceOver is on.'),
                    ),
                    Text('For the below example,'
                        ' UnSubscribe, is enabled Subscribe is'
                        ' not accessible for VoiceOver.'),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Email Id'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Email Id",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        child: ElevatedButton(
                          child: const Text("UnSubscribe"),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Semantics(
                        child: ElevatedButton(
                          child: const Text("Subscribe"),
                          onPressed: () {},
                        ),
                        excludeSemantics: true,
                      )
                    ],
                  ),
                ],
              ),
            ),
            CodeSinppetWidget(codeSnippet: becodeSnippet),
          ],
        ),
      ),
    );
  }
}
