import 'package:flutter/material.dart';
import 'package:sample1/RulesList/Operable/211/CustomGesturesSample.dart';
import 'package:sample1/RulesList/Operable/211/KeyboardNavigationSample.dart';
import 'package:sample1/RulesList/Operable/221/TimeAdjustableSample.dart';
import 'package:sample1/RulesList/Operable/222/AutomaticallyUpdatingContentSample.dart';
import 'package:sample1/RulesList/Operable/222/PauseStopHideContentSample.dart';
import 'package:sample1/RulesList/Operable/231/FlashingContentSample.dart';
import 'package:sample1/RulesList/Operable/242/TitleofPageSample.dart';
import 'package:sample1/RulesList/Operable/246/DescriptiveHeadingSample.dart';
import 'package:sample1/RulesList/Operable/246/DescriptiveLabelsSample.dart';
import 'package:sample1/RulesList/Operable/253/LabelinNameSample.dart';
import 'package:sample1/importFiles.dart';

class KeyboardNavigationSampleButton extends StatelessWidget {

  String identifier = SCs.KayboardNavigation.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return KeyboardNavigationSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.KayboardNavigation.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class TimeAdjustableSampleButton extends StatelessWidget {

  String identifier = SCs.TimeAdjustable.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TimeAdjustableSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.TimeAdjustable.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class PauseStopHideContentSampleButton extends StatelessWidget {

  String identifier = SCs.PauseStopHide.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PauseStopHideContentSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.PauseStopHide.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class AutomaticUpdateContentSampleButton extends StatelessWidget {

  String identifier = SCs.AutomaticUpdating.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AutomaticallyUpdatingContentSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AutomaticUpdating.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class FlashingContentSampleButton extends StatelessWidget {

  String identifier = SCs.FlashingContent.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text('Alert'),
            content: Text('Flashing Content Available'),
            actions: [

              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('Cancel')),

              ElevatedButton(onPressed: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FlashingContentSample();
                })
                );
              }, child: Text('Okay')),

            ],
          );
        },
      );

    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.FlashingContent.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class TitlesofPageSampleButton extends StatelessWidget {

  String identifier = SCs.TitlesOfPages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TitlesOfPageSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.TitlesOfPages.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class DescriptiveHeadingSampleButton extends StatelessWidget {

  String identifier = SCs.DescriptiveHeading.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DescriptiveHeadingSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.DescriptiveHeading.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class DescriptiveLabelSampleButton extends StatelessWidget {

  String identifier = SCs.DescriptiveLabel.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DescriptiveLabelsSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.DescriptiveLabel.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class LabelInNameSampleButton extends StatelessWidget {

  String identifier = SCs.LabelInName.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LabelinNameSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.LabelInName.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

//CustomGesturesSample
class CustomGestureSampleButton extends StatelessWidget {

  String identifier = SCs.CustomGestures.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CustomGesturesSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.CustomGestures.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

//AutomaticallyUpdatingContentSample
class AutomaticContentUpdateSampleButton extends StatelessWidget {

  String identifier = SCs.AutomaticUpdating.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AutomaticallyUpdatingContentSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AutomaticUpdating.name,),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

