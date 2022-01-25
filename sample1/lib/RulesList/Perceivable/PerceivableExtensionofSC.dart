import 'package:sample1/RulesList/Perceivable/111/111cAltTextComplexImage.dart';
import 'package:sample1/RulesList/Perceivable/111/111dDecorativeImages.dart';
import 'package:sample1/RulesList/Perceivable/111/111hAudioOrVideoImages.dart';
import 'package:sample1/RulesList/Perceivable/121/121aTextTransScriptAudio.dart';
import 'package:sample1/RulesList/Perceivable/121/121bTextTranscriptVideo.dart';
import 'package:sample1/RulesList/Perceivable/131/131cProgrammaticLabels.dart';
import 'package:sample1/RulesList/Perceivable/131/131eHeadings.dart';
import 'package:sample1/RulesList/Perceivable/133/133bSoundCues.dart';
import 'package:sample1/RulesList/Perceivable/141/141aColorasInformation.dart';
import 'package:sample1/RulesList/Perceivable/141/141bLinkColorContrast.dart';
import 'package:sample1/RulesList/Perceivable/142/AudioControlSample.dart';
import 'package:sample1/RulesList/Perceivable/143/ColorContrast.dart';
import 'package:sample1/RulesList/VisualCues.dart';
import 'package:sample1/importFiles.dart';
import 'package:sample1/RulesList/Perceivable/111/111aAltTextActiveImage.dart';
import 'package:sample1/RulesList/Perceivable/111/111bAltInformativeImage.dart';
import 'package:sample1/RulesList/Perceivable/111/111gCaptchaTextImages.dart';


class GlobalImages {
  static final GlobalImages _instance = GlobalImages.sharedInstance();

  factory GlobalImages() => _instance;

  Image get rightArrow => Image.asset('assets/images/details_right_arrow.png');

  GlobalImages.sharedInstance() {

  }
}

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
        TextReturnWidget(checkPoint: SCs.AltTextActiveImages.name),
        Spacer(),
        GlobalImages.sharedInstance().rightArrow,
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
        TextReturnWidget(checkPoint: SCs.AltTextInformativeImages.name),
        Spacer(),
        GlobalImages.sharedInstance().rightArrow,
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
        TextReturnWidget(checkPoint: SCs.AltTextComplexImages.name),
        Spacer(),
        GlobalImages.sharedInstance().rightArrow,
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
        TextReturnWidget(checkPoint: SCs.AltTextDecorativeImages.name),
        Spacer(),
        GlobalImages.sharedInstance().rightArrow,
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
        TextReturnWidget(checkPoint: SCs.AltTextCaptchaImages.name),
        Spacer(),
        GlobalImages.sharedInstance().rightArrow,
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
        TextReturnWidget(checkPoint: SCs.AltTextAudioVideoImages.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.TranscriptPrerecordedAudio.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        return TextTranscriptVideoSample();
      })
      );
    }, child: Row(
      children: [
        SizedBox(width: 5,),
        TextReturnWidget(checkPoint: SCs.TranscriptPrerecordedVideo.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.InfoRelationShipProgrammaticLabels.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.Headings.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.VisualCues.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.SoundCues.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.ColorAsInformation.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.LinkColorContrast.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
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
        TextReturnWidget(checkPoint: SCs.AudioControl.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
      ],
    ),);
  }
}

class ColorContrastRegularTextgSampleButton extends StatelessWidget {

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
        TextReturnWidget(checkPoint: SCs.ColorContrastRegularText.name),
        Spacer(),
        GlobalImages
            .sharedInstance()
            .rightArrow,
      ],
    ),);
  }
}

