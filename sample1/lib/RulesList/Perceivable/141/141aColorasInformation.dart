import 'package:sample1/importFiles.dart';

class ColorasInfoSample extends StatelessWidget {

  final String ruleDescription =
      'Color MUST NOT be used as the sole method of '
      'conveying content or distinguishing visual elements.';
  
  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: SCs.ColorAsInformation.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ColorAsInformation.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            HeaderSemanticWithText('Good Example'),
            Container(
              color: Colors.red,
              child: getImageFromPath('assets/images/metachartgood.png'),
            ),
            SizedBox(height: 45,),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Student marks representation based on color \nwith respective text'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Robert'),
                      SizedBox(width: 15,),
                      Text('Pass 60', style: TextStyle(
                        color: Colors.green
                      ),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Harvard'),
                      SizedBox(width: 15,),
                      Text('Fail 30', style: TextStyle(
                          color: Colors.red
                      ),)
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 25,),
            HeaderSemanticWithText('Bad Example'),
            Container(
              color: Colors.red,
              child: getImageFromPath('assets/images/metachartbad.png'),
            ),
            SizedBox(height: 45,),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Student marks representation based on color \nwith respective text'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Robert'),
                      SizedBox(width: 15,),
                      Text('60', style: TextStyle(
                          color: Colors.green
                      ),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Harvard'),
                      SizedBox(width: 15,),
                      Text('30', style: TextStyle(
                          color: Colors.red
                      ),)
                    ],
                  ),
                ],
              ),
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 55,),
          ],
        ),
      ),
    );
  }
}