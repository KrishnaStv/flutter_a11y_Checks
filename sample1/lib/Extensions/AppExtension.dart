import 'package:flutter/material.dart';

class GlobalImages {
  static final GlobalImages _instance = GlobalImages.sharedInstance();

  factory GlobalImages() => _instance;

  Image get rightArrow => Image.asset('assets/images/details_right_arrow.png');

  GlobalImages.sharedInstance() {}
}

class RightArrowImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(
      excludeSemantics: true,
      child: GlobalImages.sharedInstance().rightArrow,
    );
  }
}

class HeaderSemanticWithText extends StatelessWidget {
  final String textIs;

  const HeaderSemanticWithText(this.textIs);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        child: Text(
          textIs,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      header: true,
    );
  }
}

class TopBarData {
  String title;
  bool enableBack;

  TopBarData({required this.title, required this.enableBack});
}

class AppBarExtension extends StatelessWidget implements PreferredSizeWidget {
  final TopBarData navdata;

  AppBarExtension({required this.navdata});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text('${navdata.title}'),
      leading: navdata.enableBack
          ? BackButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : new Container(),
    );
  }
}

class TextReturnSCLabelWidget extends StatelessWidget implements PreferredSizeWidget {
  final String checkPoint;

  TextReturnSCLabelWidget({required this.checkPoint});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(45);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      padding: EdgeInsets.only(left: 20,),
      alignment: Alignment.topLeft,
      child: Semantics(
        label: 'Success Criteria',
        child: Text('${checkPoint}',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
      ),
    );
  }
}

class TextReturnWidget extends StatelessWidget implements PreferredSizeWidget {
  final String checkPoint;
  final bool isHeader;

  TextReturnWidget({required this.checkPoint, required this.isHeader});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(45);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Semantics(
        label: 'Success Criteria',
        header: isHeader,
        child: Text(
          '${checkPoint}',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}

class CodeSinppetWidget extends StatelessWidget {
  final String codeSnippet;

  CodeSinppetWidget({required this.codeSnippet});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              HeaderSemanticWithText('Code Snippet'),
            ],
          ),
          alignment: Alignment.topLeft,
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          color: Colors.black,
          child: Text(
            '${codeSnippet}',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
