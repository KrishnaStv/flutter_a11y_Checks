import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppBarExtension.dart';
import 'package:sample1/Extensions/Extensions.dart';

class ImageofTextSample extends StatelessWidget {

  final String ruleDescription =
      'If the same visual presentation can be made using text alone, '
      'an image MUST NOT be used to present that text.';

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
          navdata: TopBarData(title: 'Image of Text', enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText('Description'),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 30,),
            Semantics(
              child:
              HeaderSemanticWithText('Good Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.red,
                child: Column(
                  children: [
                    Text('OFFERS',
                      style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20, color: Colors.white),),
                    Text('OF THE MONTH',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20, color: Colors.white),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Semantics(
              child:
              HeaderSemanticWithText('Bad Example'),
            ),
            Semantics(
              child: Container(
                child: Column(
                  children: [
                    getImageFromPath('assets/images/imagesoftext.png'),
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
