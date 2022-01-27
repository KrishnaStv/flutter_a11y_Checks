import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample1/Extensions/AppExtension.dart';
import 'package:sample1/Extensions/ModelDialogue.dart';
import 'package:sample1/Samples/FoucsModelDialogue.dart';
import 'package:sample1/Extensions/AppExtension.dart';

class ImageViewDescription extends StatelessWidget {

  final String ruleDescription = 'For adding text alternatives we have Semantics->label property.'
      '\nFor decorative images by enable excludeSemantics we can skip the ScreenReaders. \n'
      'If Semantics are not assigned then trait only will read by ScreenReaders';
  final String codeSnippet = "";

  @override
  Widget build(BuildContext context) {
    var assertImagePAth = new AssetImage('assets/images/logo.png');
    var imgObject = new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
      width: 150,
      height: 150,
    );

    void activeImageTap() {
      showDialog(
          context: context,
          builder: (dialogueContext) {
            return ModelDialogue(
              title: 'Active Image',
            );
          });
    }

    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(title: 'Text Alternatives', enableBack: true)),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Description: \n ',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(ruleDescription),
                  ],
                ),
                padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 0),
                alignment: Alignment.centerLeft,
              ),
              Container(
                child:Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Code Snippet: \n ',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'Semantic Label : \n '
                            'Semantics('
                            'child: imgObject,'
                            ' label: \'dequeLogo Informative\',) \n\n'
                            'For Decorative Images : \n'
                            'Semantics('
                            'child: imgObject,'
                            'excludeSemantics: true,),'),
                  ],
                ),
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 25,
              ),
              HeaderSemanticWithText('Active Image'),
              Semantics(
                child: GestureDetector(
                  onTap: activeImageTap,
                  child: imgObject,
                ),
                button: true,
                label: 'dequeLogo Active',
              ),
              SizedBox(
                height: 16,
              ),
              HeaderSemanticWithText('Informative Image'),
              Semantics(
                child: imgObject,
                label: 'dequeLogo Informative',
              ),
              SizedBox(
                height: 16,
              ),
              HeaderSemanticWithText('Complex Image'),
              Semantics(
                child: imgObject,
                label: 'dequeLogo Complex',
              ),
              SizedBox(
                height: 16,
              ),
              HeaderSemanticWithText('Decorative Image'),
              Semantics(
                child: imgObject,
                excludeSemantics: true,
              ),
              SizedBox(
                height: 16,
              ),
              HeaderSemanticWithText('No Semantic Label value'),
              Semantics(
                child: imgObject,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Hello'),
      centerTitle: true,
      elevation: 0,
    );
  }
}
