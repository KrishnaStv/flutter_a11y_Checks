import 'package:sample1/importFiles.dart';

class ContextChangeOnFocusSample extends StatelessWidget {
  final String ruleDescription =
      'When a screen element receives focus, it MUST NOT result in '
      'a substantial change to the screen, the spawning of a '
      'pop-up window, an additional change of keyboard focus,'
      ' or any other change that could confuse or disorient the user.';

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.ContextChangeOnFocus.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ContextChangeOnFocus.name),
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
            Semantics(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Good Example'),
                    ),
                    Text('The sample below shows a scenario where the focus'
                        ' arrives at the \'Apply Coupon\' button and waits '
                        'for users’ action to open coupon modal/dialog'
                        ' rather than automatically opening a dialog or'
                        ' redirecting to a new screen.'),
                    SizedBox(
                      height: 10,
                    ),
                    Semantics(
                      label: 'Good example APPLY COUPON',
                      child: ElevatedButton(
                        child: Text('APPLY COUPON'),
                        onPressed: () {
                          showCouponsuccessAlert(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: HeaderSemanticWithText('Bad Example'),
                    ),
                    Text('The sample below allows a change '
                        'in context as soon as focus arrives '
                        'at the controls (buttons here) rather '
                        'than waiting for user action.'),
                    SizedBox(
                      height: 10,
                    ),
                    Semantics(
                      onDidGainAccessibilityFocus: () {
                        showCouponsuccessAlert(context);
                      },
                      label: 'Bad example APPLY COUPON',
                      child: ElevatedButton(
                        child: Text('APPLY COUPON'),
                        onPressed: () {
                          showCouponsuccessAlert(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showCouponsuccessAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('Voucher applied successfully'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Okay')),
          ],
        );
      },
    );
  }
}
