import 'package:flutter/material.dart';
import 'package:sample1/Samples/Extensions.dart';

class ImageViewDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var assertImagePAth = new AssetImage('assets/images/logo.png');
    var imgObject = new Image(image: assertImagePAth,fit: BoxFit.cover,width: 150,height: 150,);

    void activeImageTap() {
      print('Function Called.');
    }

    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
            leading: BackButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 25,),
                    HeaderSemanticWithText('Active Image'),
                    Semantics(
                      child: GestureDetector(
                        onTap: activeImageTap,
                        child: imgObject,
                      ),
                      button: true,
                      label: 'dequeLogo Active',
                    ),
                    SizedBox(height: 16,),
                    HeaderSemanticWithText('Informative Image'),
                    Semantics(
                      child: imgObject,
                      label: 'dequeLogo Informative',
                    ),
                    SizedBox(height: 16,),
                    HeaderSemanticWithText('Complex Image'),
                    Semantics(
                      child: imgObject,
                      label: 'dequeLogo Complex',
                    ),
                    SizedBox(height: 16,),
                    HeaderSemanticWithText('Decorative Image'),
                    Semantics(
                      child: imgObject,
                      excludeSemantics: true,
                    ),
                    SizedBox(height: 16,),
                    HeaderSemanticWithText('No Semantic Label value'),
                    Semantics(
                      child: imgObject,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ) ,
    );
  }
}
