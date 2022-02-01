import 'package:sample1/RulesList/Perceivable/121/121aTextTransScriptAudio.dart';
import 'package:sample1/importFiles.dart';

class PerceivableRulesList extends StatelessWidget {
  final String Description =
      'Information and user interface components must be '
      'presented to users in ways that they can perceive, '
      'regardless of the user’s impairment.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBarExtension(
            navdata: TopBarData(title: 'PERCEIVABLE', enableBack: true)),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                child: Text(Description),
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
              ),
              TextReturnWidget(checkPoint: '1.1.1',isHeader: true,),
              AltTextActiveImagesButton(),
              AltTextInformativeImagesButton(),
              AltTextComplexImagesButton(),
              AltTextDecorativeImagesButton(),
              AltTextCAPTCHAImagesButton(),
              AltTextAudioVideoImagesButton(),
              TextReturnWidget(checkPoint: '1.2.1',isHeader: true,),
              TranscriptPrerecordedAudioButton(),
              TranscriptPrerecordedVideoButton(),
              TextReturnWidget(checkPoint: '1.2.3',isHeader: true,),
              TextorAudioPrereordedVideoButton(),
              TextReturnWidget(checkPoint: '1.2.5',isHeader: true,),
              AudioDescriptionsPrereordedVideoButton(),
              TextReturnWidget(checkPoint: '1.3.1',isHeader: true,),
              DataTabelsSampleButton(),
              ProgrammaticLabelSampleButton(),
              HeadingsSampleButton(),
              TextReturnWidget(checkPoint: '1.3.2',isHeader: true,),
              ReadingSampleButton(),
              TextReturnWidget(checkPoint: '1.3.3',isHeader: true,),
              VisualCuesSampleButton(),
              SoundCuesSampleButton(),
              TextReturnWidget(checkPoint: '1.4.1',isHeader: true,),
              ColorasInfoSampleButton(),
              LinkcolorContrastSampleButton(),
              TextReturnWidget(checkPoint: '1.4.2',isHeader: true,),
              AudioControlsSampleButton(),
              TextReturnWidget(checkPoint: '1.4.3',isHeader: true,),
              ColorContrastRegularTextSampleButton(),
              TextReturnWidget(checkPoint: '1.4.5',isHeader: true,),
              ImageofTextSampleButton(),
              TextReturnWidget(checkPoint: '1.4.11',isHeader: true,),
              NonTextContextActiveUISampleButton(),
              NonTextContextStateUISampleButton(),


              SizedBox(height: 45,),
            ])));
  }
}
