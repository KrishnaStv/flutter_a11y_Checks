import 'package:sample1/RulesList/Perceivable/111/111cAltTextComplexImage.dart';
import 'package:sample1/RulesList/Perceivable/111/111dDecorativeImages.dart';
import 'package:sample1/RulesList/Perceivable/111/111hAudioOrVideoImages.dart';
import 'package:sample1/RulesList/Perceivable/121/121aTextTransScriptAudio.dart';
import 'package:sample1/RulesList/Perceivable/121/121bTextTranscriptVideo.dart';
import 'package:sample1/RulesList/Perceivable/131/131bDataTablesSample.dart';
import 'package:sample1/RulesList/Perceivable/131/131cProgrammaticLabels.dart';
import 'package:sample1/RulesList/Perceivable/131/131eHeadings.dart';
import 'package:sample1/RulesList/Perceivable/133/133aVisualcues.dart';
import 'package:sample1/RulesList/Perceivable/133/133bSoundCues.dart';
import 'package:sample1/RulesList/Perceivable/141/141aColorasInformation.dart';
import 'package:sample1/RulesList/Perceivable/141/141bLinkColorContrast.dart';
import 'package:sample1/RulesList/Perceivable/1411/NonTextContrastActiveUI.dart';
import 'package:sample1/RulesList/Perceivable/1411/NonTextContrastStatesofUI.dart';
import 'package:sample1/RulesList/Perceivable/142/AudioControlSample.dart';
import 'package:sample1/RulesList/Perceivable/143/ColorContrast.dart';
import 'package:sample1/RulesList/Perceivable/145/ImageofText.dart';
import 'package:sample1/importFiles.dart';
import 'package:sample1/RulesList/Perceivable/111/111aAltTextActiveImage.dart';
import 'package:sample1/RulesList/Perceivable/111/111bAltInformativeImage.dart';
import 'package:sample1/RulesList/Perceivable/111/111gCaptchaTextImages.dart';

class AltTextActiveImagesButton extends StatelessWidget {

  String identifier = SCs.AltTextActiveImages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AltTextActiveImages();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AltTextActiveImages.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class AltTextInformativeImagesButton extends StatelessWidget {

  String identifier = SCs.AltTextInformativeImages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AltTextInformativeImages();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AltTextInformativeImages.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class AltTextComplexImagesButton extends StatelessWidget {

  String identifier = SCs.AltTextComplexImages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AltTextComplexImages();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AltTextComplexImages.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}


class AltTextDecorativeImagesButton extends StatelessWidget {

  String identifier = SCs.AltTextDecorativeImages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AltTextDecorativeImages();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AltTextDecorativeImages.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class AltTextCAPTCHAImagesButton extends StatelessWidget {

  String identifier = SCs.AltTextCaptchaImages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AltTextCaptchaImages();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AltTextCaptchaImages.name),
        Spacer(),
         RightArrowImageWidget(),
      ],
    ),);
  }
}

class AltTextAudioVideoImagesButton extends StatelessWidget {

  String identifier = SCs.AltTextAudioVideoImages.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AltTextAudioOrVideoImages();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AltTextAudioVideoImages.name),
        Spacer(),
         RightArrowImageWidget(),
      ],
    ),);
  }
}

class TranscriptPrerecordedAudioButton extends StatelessWidget {

  String identifier = SCs.TranscriptPrerecordedAudio.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TextTranscriptAudioSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.TranscriptPrerecordedAudio.name),
        Spacer(),
         RightArrowImageWidget(),
      ],
    ),);
  }
}

class TranscriptPrerecordedVideoButton extends StatelessWidget {

  String identifier = SCs.TranscriptPrerecordedVideo.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TextTranscriptVideoSample(pageTitle: SCs.TranscriptPrerecordedVideo.pageTitle,topname: SCs.TranscriptPrerecordedVideo.name,);
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.TranscriptPrerecordedVideo.name),
        Spacer(),
         RightArrowImageWidget(),
      ],
    ),);
  }
}

class TextorAudioPrereordedVideoButton extends StatelessWidget {

  String identifier = SCs.TextOrAudioPreRecordedVideoWithDialogue.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TextTranscriptVideoSample(pageTitle: SCs.TextOrAudioPreRecordedVideoWithDialogue.pageTitle,topname: SCs.TextOrAudioPreRecordedVideoWithDialogue.name,);
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.TextOrAudioPreRecordedVideoWithDialogue.name),
        Spacer(),
         RightArrowImageWidget(),
      ],
    ),);
  }
}

class AudioDescriptionsPrereordedVideoButton extends StatelessWidget {

  String identifier = SCs.AudioDescriptions.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return TextTranscriptVideoSample(pageTitle: SCs.AudioDescriptions.pageTitle,topname: SCs.AudioDescriptions.name,);
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AudioDescriptions.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

//ProgrammaticLabelSample

class ProgrammaticLabelSampleButton extends StatelessWidget {

  String identifier = SCs.InfoRelationShipProgrammaticLabels.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ProgrammaticLabelSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.InfoRelationShipProgrammaticLabels.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class HeadingsSampleButton extends StatelessWidget {

  String identifier = SCs.Headings.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HeadingsSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.Headings.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class VisualCuesSampleButton extends StatelessWidget {

  String identifier = SCs.VisualCues.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return VisualCues();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.VisualCues.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class SoundCuesSampleButton extends StatelessWidget {

  String identifier = SCs.SoundCues.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SoundCuesSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.SoundCues.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class ColorasInfoSampleButton extends StatelessWidget {

  String identifier = SCs.ColorAsInformation.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ColorasInfoSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.ColorAsInformation.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class LinkcolorContrastSampleButton extends StatelessWidget {

  String identifier = SCs.LinkColorContrast.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LinkColorContrastSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.LinkColorContrast.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class AudioControlsSampleButton extends StatelessWidget {

  String identifier = SCs.AudioControl.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return AudioControlSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.AudioControl.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class ColorContrastRegularTextSampleButton extends StatelessWidget {

  String identifier = SCs.ColorContrastRegularText.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ColorContrastSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.ColorContrastRegularText.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}


class ImageofTextSampleButton extends StatelessWidget {

  String identifier = SCs.ImageOfText.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ImageofTextSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.ImageOfText.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class NonTextContextActiveUISampleButton extends StatelessWidget {

  String identifier = SCs.NonTextContrastActiveUI.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NonTextContrastActiveUI();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.NonTextContrastActiveUI.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class NonTextContextStateUISampleButton extends StatelessWidget {

  String identifier = SCs.NonTextContrastStateofUI.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NonTextContrastStatesActiveUI();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.NonTextContrastStateofUI.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}

class DataTabelsSampleButton extends StatelessWidget {

  String identifier = SCs.DataTables.identifier;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DataTableSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnSCLabelWidget(checkPoint: SCs.DataTables.name),
        Spacer(),
        RightArrowImageWidget(),
      ],
    ),);
  }
}