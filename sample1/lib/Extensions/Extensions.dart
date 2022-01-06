import 'package:flutter/material.dart';

class HeaderSemanticWithText extends StatelessWidget {

  final String textIs;
  const HeaderSemanticWithText(this.textIs);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Semantics(
      child: Text(textIs,
        style: TextStyle(fontWeight: FontWeight.bold ),
      ),
      header: true,
    );
  }
}