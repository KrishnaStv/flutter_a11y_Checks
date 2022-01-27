import 'package:sample1/importFiles.dart';

class ConsistentNavigationPatternsSample extends StatelessWidget {

  final String ruleDescription =
      'Navigation patterns that are repeated across multiple'
      ' screens must be presented in the same relative order'
      ' each time they appear and must not change order when '
      'navigating through the app.';

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
          navdata: TopBarData(title: SCs.ConsistentNavigationPatterns.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ConsistentNavigationPatterns.name),
                    ],
                  ),
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
                    Text(' In the below sample, the Navigation bar is '
                        'used to navigate to other screens with the'
                        ' hamburger menu button and settings button '
                        'overall the application.'),
                    Container(
                      height: 55,
                     color: Colors.blueAccent,
                      child: Row (
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 25,),
                              Semantics(
                                button: true,
                                label: 'Menu',
                                child: IconButton(
                                  icon: Image.asset('assets/images/menu.png'),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 25,),
                             Semantics(
                               child:  Text('Disaster Management',
                                   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white) ),
                             ),
                              SizedBox(width: 25,),
                              Semantics(
                                button: true,
                                label: 'Settings',
                                child: IconButton(
                                  icon: Image.asset('assets/images/settings.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 55,
                      color: Colors.blueAccent,
                      child: Row (
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 25,),
                              Semantics(
                                button: true,
                                label: 'Menu',
                                child: IconButton(
                                  icon: Image.asset('assets/images/menu.png'),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 25,),
                              Semantics(
                                  child:  Text('Flood Management',
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white) ),
                              ),
                              SizedBox(width: 25,),
                              Semantics(
                                button: true,
                                label: 'Settings',
                                child: IconButton(
                                  icon: Image.asset('assets/images/settings.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
                    Container(
                      height: 55,
                      color: Colors.blueAccent,
                      child: Row (
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 25,),
                              Semantics(
                                button: true,
                                label: 'Menu',
                                child: IconButton(
                                  icon: Image.asset('assets/images/menu.png'),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(width: 25,),
                              Semantics(
                                child:  Text('Disaster Management',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white) ),
                              ),
                              SizedBox(width: 25,),
                              Semantics(
                                button: true,
                                label: 'Settings',
                                child: IconButton(
                                  icon: Image.asset('assets/images/settings.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 55,
                      color: Colors.blueAccent,
                      child: Row (
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 100,),
                              Semantics(
                                child:  Text('Flood Management',
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white) ),
                              ),
                              SizedBox(width: 25,),
                              Semantics(
                                button: true,
                                label: 'Back',
                                child: IconButton(
                                  icon: Image.asset('assets/images/back.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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