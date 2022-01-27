import 'package:sample1/RulesList/Robust/RobustExtensionsofSC.dart';
import 'package:sample1/importFiles.dart';

class RobustRulesList extends StatelessWidget {
  final String Description =
      'Content must be robust enough that it can be interpreted'
      ' reliably by a wide variety of user agents, including '
      'assistive technologies.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBarExtension(
            navdata: TopBarData(title: 'ROBUST', enableBack: true)),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                child: Text(Description),
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
              ),
              TextReturnWidget(checkPoint: '4.1.2',isHeader: true,),
              NameRoleValueSampleButton(),
              TextReturnWidget(checkPoint: '4.1.3',isHeader: true,),
              StatusMessagesSampleButton(),

              SizedBox(height: 45,),
            ])));
  }
}
