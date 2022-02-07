import 'package:sample1/RulesList/Understandable/UnderstandableExtensionofSC.dart';
import 'package:sample1/importFiles.dart';

class UnderstandableRulesList extends StatelessWidget {
  final String Description =
      'Information and the operation of user interface must be understandable.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBarExtension(
            navdata: TopBarData(title: 'UNDERSTANDABLE', enableBack: true)),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                child: Text(Description),
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
              ),
              TextReturnWidget(checkPoint: '3.2.1', isHeader: true),
              ContextChangeOnFocusSampleButton(),
              TextReturnWidget(checkPoint: '3.2.2',isHeader: true,),
              ContextChangeOnInputSampleButton(),
              TextReturnWidget(checkPoint: '3.2.3',isHeader: true,),
              ConsistentNavigationPatternsSampleButton(),
              TextReturnWidget(checkPoint: '3.2.4',isHeader: true,),
              ConsistentIdentificationSampleButton(),
              TextReturnWidget(checkPoint: '3.3.1',isHeader: true,),
              ErrorIdentificationSampleButton(),
              TextReturnWidget(checkPoint: '3.3.2',isHeader: true,),
              VisibleLabelsSampleButton(),
              MissingInstructionsSampleButton(),
              RequiredFormFieldsSampleButton(),
              TextReturnWidget(checkPoint: '3.3.3',isHeader: true,),
              ErrorSuggestionsSampleButton(),














              SizedBox(height: 45,),
            ])));
  }
}
