import 'package:sample1/importFiles.dart';

class PointerCancellationSample extends StatelessWidget {
  final String ruleDescription =
      'For functionality that can be operated using a single-pointer'
      ' at least one of the following is true: no down-event, abort/undo,'
      ' up reversal or essential.';

  @override
  Widget build(BuildContext context) {

    Future<void> _showDialog(bool enableOutSideTap,
        String title,
        String description,
        bool? isSecondActionAvailable,
        String button1Title,
        String? button2Title,
        bool? enableTimerTodismiss,) async {
      List<Widget> widgets = [];

      widgets.add( TextButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: Text(button1Title)),);

      if(isSecondActionAvailable == true) {
        widgets.add( TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text(button2Title ?? 'No')),);
      }

      if(enableTimerTodismiss == true) {
        Future.delayed(Duration(milliseconds: 1200), () {
          Navigator.of(context).pop();
        });
      }

      return showDialog(context: context,
          barrierDismissible: enableOutSideTap,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text(description),
                  ],
                ),
              ),
              actions: widgets,
            );
          });
    }

    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.PointerCancellation.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.PointerCancellation.name),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Good Example'),
                  ),
                  Text(' Below sample, given the option to delete the account '
                      'from the app. We added another confirmation alert'
                      ' for the delete account.'),
                  SizedBox(
                    height: 10,
                  ),
                  Semantics(
                    child: OutlinedButton( style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    ),
                        onPressed: (){
                          _showDialog(false, 'Alert', 'Are you sure want to Delete Account?', true, 'Cancel', 'Delete', false);
                        }, child: Text('Delete Account')),
                    label: 'Good Example Delete Account',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Bad Example'),
                  ),
                  Text('Below sample, given the option to'
                      ' delete the account from the app.'
                      ' There is no confirmation alert.'),
                  SizedBox(
                    height: 10,
                  ),
                  Semantics(
                    child: OutlinedButton( style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    ),
                        onPressed: (){
                          _showDialog(false, 'Alert', 'Account Deleted Successfully', false, 'Okay', 'Okay', false);
                        }, child: Text('Delete Account')),
                    label: 'Bad Example Delete Account',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
