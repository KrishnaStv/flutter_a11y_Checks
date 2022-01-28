import 'package:sample1/importFiles.dart';

class ConsistentIdentificationSample extends StatelessWidget {
  final String ruleDescription = 'Elements such as labels, names, and text'
      ' alternatives for content that have the same'
      ' functionality across multiple screens'
      ' MUST be consistently identified.';

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
          navdata:
              TopBarData(title: SCs.ConsistentIdentification.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ConsistentIdentification.name),
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
                  Text('The sample below shows a navigation bar that contains '
                      'a button with a hamburger icon. The button is consistently'
                      ' labeled as \'Menu\' across the screens. '
                      'It is recommended to maintain the same label across'
                      ' the screens wherever the navigation bar is shown.'
                      ' Labeling it differently on any screen fails a'
                      ' consistent identification of the control.'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    color: Colors.blueAccent,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Semantics(
                          button: true,
                          label: 'Menu',
                          child: Semantics(
                            child: IconButton(
                              icon: Image.asset('assets/images/menu.png'),
                              onPressed: () {},
                            ),
                            excludeSemantics: true,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Semantics(
                          header: true,
                          child: Text('Sample title',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Labels used for form controls like EditTexts,'
                      ' checkboxes, radio buttons MUST also be '
                      'consistently identifiable. Say a phone number'
                      ' field is presented to the user during '
                      'registration. The label for the field must'
                      ' be consistent when the same field control '
                      'is presented to the user in the Profile'
                      ' Details screen, or the Edit Profile screens.'
                      ' Labeling it \'Phone Number\' on one screen'
                      ' and \'Contact Number\''),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Phone Number'),
                  ),
                  Semantics(
                    textField: true,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "999 999 9999",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                 padding: EdgeInsets.only(left: 15,right: 15),
                 child: Column(
                   children: [
                     Container(
                       alignment: Alignment.topLeft,
                       child: HeaderSemanticWithText('Bad Example'),
                     ),
                     Text('The sample below takes the above scenarios '
                         'and shows how labels can be inconsistent '
                         'when used on different screens.'),
                     SizedBox(height: 15,),
                     Container(
                       height: 55,
                       color: Colors.blueAccent,
                       child:
                           Row(
                             children: [
                               SizedBox(width: 25,),
                               Semantics(
                                 button: true,
                                 label: 'Hamburger Menu',
                                 child: Semantics(
                                   child: IconButton(
                                     icon: Image.asset('assets/images/menu.png'),
                                     onPressed: () {},
                                   ),
                                   excludeSemantics: true,
                                 ),
                               ),
                               SizedBox(width: 25,),
                               Semantics(
                                 header: true,
                                 child:  Text('Disaster Management',
                                     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white) ),
                               ),
                             ],
                           )
                     ),
                     SizedBox(height: 10,),
                     Container(
                       alignment: Alignment.topLeft,
                       child: Text('Contact Number'),
                     ),
                     Semantics(
                       textField:true,
                       child: TextField(
                         decoration: InputDecoration(
                           hintText: "999 999 9999",
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
            SizedBox(height: 45,),
          ],
        ),
      ),
    );
  }
}
