import 'package:sample1/importFiles.dart';

class AutomaticallyUpdatingContentSample extends StatelessWidget {
  final String ruleDescription =
      'Automatically moving, blinking, or scrolling content '
      'that lasts longer than 5 seconds MUST be able to be paused, '
      'stopped, or hidden by the user.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.AutomaticUpdating.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.AutomaticUpdating.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText(
                    'Good Example: Provides a button to control play/pause of the image-slider.'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('The sample below uses a native ViewFlipper'
                        ' with multiple ImageViews to present a slider. '
                        'ViewFlipper by default comes with a good set of '
                        'functions to autostart, stop, start a flipper.'),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 120, // <-- you should put some value here
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Text('it works     ');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Semantics(
              child: Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText(
                    '   Bad Example: No option to adjust or extend time limit.'),
              ),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('The sample below does not warn or allow users'
                        ' to extend/adjust the timing of the session time-outs.'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Email Id'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Email Id",
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Submit OTP"),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Text('For Error Messages,'
                        ' Update Messages MUST need to provide'
                        ' to be hidden by user actions only'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Semantics(
                          child: ElevatedButton(
                            child: const Text("Tap to Update"),
                            onPressed: () {},
                          ),
                        ),
                      ],
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
}
