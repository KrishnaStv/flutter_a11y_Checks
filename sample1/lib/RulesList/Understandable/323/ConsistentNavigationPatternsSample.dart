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
          navdata: TopBarData(
              title: SCs.ConsistentNavigationPatterns.pageTitle,
              enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(
                          SCs.ConsistentNavigationPatterns.name),
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
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Good Example'),
                  ),
                  Text('In the below sample, the Navigation bar is '
                      'used to navigate to other screens with the'
                      ' hamburger menu button and settings button '
                      'overall the application.'),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 55,
                    color: Colors.blueAccent,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Semantics(
                              button: true,
                              label: 'Menu',
                              child: Semantics(
                                excludeSemantics: true,
                                child: IconButton(
                                  icon: Image.asset('assets/images/menu.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Semantics(
                              header: true,
                              child: Text('Disaster Management',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Semantics(
                              button: true,
                              label: 'Settings',
                              child: Semantics(
                                excludeSemantics: true,
                                child: IconButton(
                                  icon:
                                      Image.asset('assets/images/settings.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 55,
                    color: Colors.blueAccent,
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Semantics(
                              button: true,
                              label: 'Menu',
                              child: Semantics(
                                excludeSemantics: true,
                                child: IconButton(
                                  icon: Image.asset('assets/images/menu.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Semantics(
                              header: true,
                              child: Text('Flood Management',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Semantics(
                              button: true,
                              label: 'Settings',
                              child: Semantics(
                                child: IconButton(
                                  icon:
                                      Image.asset('assets/images/settings.png'),
                                  onPressed: () {},
                                ),
                                excludeSemantics: true,
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
            SizedBox(
              height: 25,
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Bad Example'),
                    ),
                    Text(' In the below sample, the Navigation bar '
                        'is used to navigate to other screens with the'
                        ' hamburger menu button and settings button'
                        ' overall the application. But in some screen,'
                        ' the navigation pattern is not similar exist '
                        'without the menu and settings button'),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 55,
                      color: Colors.blueAccent,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 25,
                              ),
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
                              SizedBox(
                                width: 25,
                              ),
                              Semantics(
                                header: true,
                                child: Text('Disaster Management',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Semantics(
                                button: true,
                                label: 'Settings',
                                child: Semantics(
                                  child: IconButton(
                                    icon: Image.asset(
                                        'assets/images/settings.png'),
                                    onPressed: () {},
                                  ),
                                  excludeSemantics: true,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 55,
                      color: Colors.blueAccent,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                              ),
                              Semantics(
                                header: true,
                                child: Text('Flood Management',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Semantics(
                                button: true,
                                label: 'Back',
                                child: Semantics(
                                  child: IconButton(
                                    icon: Image.asset('assets/images/back.png'),
                                    onPressed: () {},
                                  ),
                                  excludeSemantics: true,
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
