import 'package:sample1/importFiles.dart';

class TimeAdjustableSample extends StatelessWidget {

  final String ruleDescription =
      'If a screen or application has a time limit,'
      ' the user MUST be given options to turn off, adjust, '
      'or extend that time limit.';

  @override
  Widget build(BuildContext context) {

    Future<void> _showDialog(bool enableOutSideTap,
        String title,
        String description,
    bool? isSecondActionAvailable,
    String button1Title,
    String? button2Title,
        bool? enableTimerTodismiss) async {
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
          navdata: TopBarData(title: SCs.TimeAdjustable.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.TimeAdjustable.name),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Semantics(
              child:
                Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('Good Example'),
                ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('The sample below makes sure a dialog (modal) is '
                        'presented to inform the user about'
                        ' possible timeout and also provides '
                        'an option to extend the session.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Email Id'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email Id",
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Submit OTP"),
                            onPressed: () {
                              _showDialog(false, 'Time out', 'Your session is closing in about 90 sec, Do you wish to extend ?', true, 'No', 'Yes', false);
                            },
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Text('For Error Messages,'
                        ' Update Messages MUST need to provide'
                        ' to be hidden by user actions only'),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Tap to Update"),
                            onPressed: () {
                              _showDialog(false, 'Alert', 'Profile updated successfully', false, 'Okay', 'Yes', false);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('Bad Example: No option to'
                    ' adjust or extend time limit.'),
              ),
             Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('The sample below does not warn or allow users'
                        ' to extend/adjust the timing of the session time-outs.'),
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Email Id'),
                    ),
                    SizedBox(height: 5,),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email Id",
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Submit OTP"),
                            onPressed: () {
                              _showDialog(true, 'Session Timeout', 'Your session is timed out, Please login again ?', false, 'Okay', 'Yes', true);
                            },
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Text('For Error Messages,'
                        ' Update Messages MUST need to provide'
                        ' to be hidden by user actions only'),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Tap to Update"),
                            onPressed: () {
                              _showDialog(false, 'Alert', 'Profile updated successfully', false, 'Okay', 'Yes', true);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            SizedBox(height: 45,),
          ],
        ),
      ),
    );
  }
}
