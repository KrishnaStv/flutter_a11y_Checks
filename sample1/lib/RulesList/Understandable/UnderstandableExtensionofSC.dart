import 'package:sample1/RulesList/Understandable/322/ContextChangeOnInputSample.dart';
import 'package:sample1/RulesList/Understandable/323/ConsistentNavigationPatternsSample.dart';
import 'package:sample1/RulesList/Understandable/324/ConsistentIdentificationSample.dart';
import 'package:sample1/RulesList/Understandable/331/ErrorIdentification.dart';
import 'package:sample1/RulesList/Understandable/332/MissingInstructionsSample.dart';
import 'package:sample1/RulesList/Understandable/332/RequiredFormFieldsSample.dart';
import 'package:sample1/RulesList/Understandable/332/VisualLabelsSample.dart';
import 'package:sample1/RulesList/Understandable/333/ErrorSuggestionSample.dart';
import 'package:sample1/importFiles.dart';
import 'package:flutter/material.dart';

class ContextChangeOnInputSampleButton extends StatelessWidget {

  String identifier = SCs.ContextChangeOnInput.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ContextChangeOnInputSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.ContextChangeOnInput.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class ConsistentNavigationPatternsSampleButton extends StatelessWidget {

  String identifier = SCs.ConsistentNavigationPatterns.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ConsistentNavigationPatternsSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.ConsistentNavigationPatterns.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class ConsistentIdentificationSampleButton extends StatelessWidget {

  String identifier = SCs.ConsistentIdentification.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ConsistentIdentificationSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.ConsistentIdentification.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class ErrorIdentificationSampleButton extends StatelessWidget {

  String identifier = SCs.ErrorIdentification.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ErrorIdentificationSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.ErrorIdentification.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class VisibleLabelsSampleButton extends StatelessWidget {

  String identifier = SCs.VisibleLabels.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return VisualLabelsSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.VisibleLabels.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class MissingInstructionsSampleButton extends StatelessWidget {

  String identifier = SCs.MissingInstructions.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MissingInstructionsSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.MissingInstructions.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class RequiredFormFieldsSampleButton extends StatelessWidget {

  String identifier = SCs.RequiredFormFields.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return RequiredFormFieldsSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.RequiredFormFields.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class ErrorSuggestionsSampleButton extends StatelessWidget {

  String identifier = SCs.ErrorSuggestions.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ErrorSuggestionSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.ErrorSuggestions.name,isHeader: false,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}