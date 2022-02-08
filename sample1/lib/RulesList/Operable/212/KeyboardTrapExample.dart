import 'package:sample1/importFiles.dart';

class KeyboardTrapSample extends StatelessWidget {
  final String ruleDescription =
      'Focus MUST NOT be locked or trapped in a particular page element and the '
      'user MUST be able to navigate to and from all navigable page elements.';

  void showAlertDialogue(BuildContext context,
      bool isDismissable,
      String title,
      String description,
      String buttontitle,
      bool isbuttonEnable) {
    showDialog(
      context: context,
      barrierDismissible: isDismissable,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: isbuttonEnable ? [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(buttontitle)),
          ] : [],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.KeyboardTrap.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.KeyboardTrap.name),
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
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText(
                          'Good Example:'),
                    ),
                    Text('The sample below makes sure a dialog (modal) can'
                        ' be dismissed when a VoiceOver is turned on.'),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  showAlertDialogue(context, true, 'Can Dismiss Dialog?', 'This dialog can be closed '
                      'either through Okay button or touch outside of dialog.', 'Okay', true);
                },
                child: Text('Click to Open Alert Dialog')),
            SizedBox(
              height: 25,
            ),
            Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Bad Example:'),
                    ),
                    Text('When user clicks on the button, a dialog comes up.'
                        ' However there is no option to close the dialog.'),
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  showAlertDialogue(context, false, 'Can Dismiss Dialog?', 'No '
                      'Option is provided to close this dialog', 'Okay', false);
                },
                child: Text('Click to Open Alert Dialog')),
          ],
        ),
      ),
    );
  }
}
