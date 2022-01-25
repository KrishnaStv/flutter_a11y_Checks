import 'package:flutter/material.dart';

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
      centerTitle: true,
      leading: navdata.enableBack ? BackButton(
        color: Colors.white,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ) : new Container(),
    );
  }
}

class TextReturnWidget extends StatelessWidget implements PreferredSizeWidget {

  final String checkPoint;
  TextReturnWidget({required this.checkPoint});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(45);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Text('${checkPoint}', style: TextStyle(fontWeight: FontWeight.normal),),
    );
  }
}