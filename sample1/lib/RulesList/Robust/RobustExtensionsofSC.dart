import 'package:flutter/material.dart';
import 'package:sample1/RulesList/Robust/412/NameRoleValueSample.dart';
import 'package:sample1/RulesList/Robust/413/StatusMessgesSample.dart';
import 'package:sample1/importFiles.dart';

class NameRoleValueSampleButton extends StatelessWidget {

  String identifier = SCs.NameRoleValue.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NameRoleValueSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.NameRoleValue.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class StatusMessagesSampleButton extends StatelessWidget {

  String identifier = SCs.StatusMessages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return StatusMessagesSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.StatusMessages.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}