import 'package:sample1/importFiles.dart';

class ContextChangeOnInputSample extends StatelessWidget {

  final String ruleDescription =
      'When a user inputs information or interacts with a control,'
      ' it MUST NOT result in a substantial change to the page,'
      ' the spawning of a pop-up window, an additional change of'
      ' keyboard focus, or any other change that could confuse or'
      ' disorient the user unless the user is informed'
      ' of the change ahead of time.';

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.ContextChangeOnInput.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ContextChangeOnInput.name),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Semantics(
              child:
              Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Good Example'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('  The sample below shows a scenario where '
                        'the user entered the Email id to subscribe.'
                        ' Until user tap on subscribe, '
                        'no action can be performed.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Email Id'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email Id",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("SUBSCRIBE"),
                            onPressed: () {
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Semantics(
              child:
              Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Bad Example'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('  The sample below allows a change in'
                        ' context (moves to a different screen) as soon as '
                        'the user starts typing in the edit text field '
                        'without any information.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Email Id'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email Id",
                      ),
                      onChanged: (text) {
                        if(text.length > 0) {
                          Navigator.of(context).pop();
                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("SUBSCRIBE"),
                            onPressed: () {
                            },
                          ),
                        ),
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