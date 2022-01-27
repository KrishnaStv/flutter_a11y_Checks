import 'package:sample1/RulesList/Operable/OperableExtensionofSC.dart';
import 'package:sample1/importFiles.dart';

class OperableRulesList extends StatelessWidget {
  final String Description =
      'User interface components and navigation must be operable.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBarExtension(
            navdata: TopBarData(title: 'OPERABLE', enableBack: true)),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                child: Text(Description),
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
              ),
              TextReturnWidget(checkPoint: '2.1.1',isHeader: true,),
              KeyboardNavigationSampleButton(),
              TextReturnWidget(checkPoint: '2.2.1',isHeader: true,),
              TimeAdjustableSampleButton(),
              TextReturnWidget(checkPoint: '2.2.2',isHeader: true,),
              PauseStopHideContentSampleButton(),
              TextReturnWidget(checkPoint: '2.3.1',isHeader: true,),
              FlashingContentSampleButton(),
              TextReturnWidget(checkPoint: '2.4.2',isHeader: true,),
              TitlesofPageSampleButton(),
              TextReturnWidget(checkPoint: '2.4.6',isHeader: true,),
              DescriptiveHeadingSampleButton(),
              DescriptiveLabelSampleButton(),
              TextReturnWidget(checkPoint: '2.5.3',isHeader: true,),
              LabelInNameSampleButton(),








              SizedBox(height: 45,),
            ])));
  }
}
