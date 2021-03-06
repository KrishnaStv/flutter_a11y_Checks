import 'package:sample1/importFiles.dart';

class ErrorSuggestionSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ErrorSuggestionSampleState();
  }
}

class ErrorSuggestionSampleState extends State<ErrorSuggestionSample> {
  final _controller = TextEditingController();
  final _becontroller = TextEditingController();

  final String ruleDescription = ' If input errors are automatically detected, '
      'suggestions MUST be provided in text for fixing '
      'the input in a timely and accessible manner before'
      ' the data is submitted to the server.';

  var _text = '';
  var _beText = '';

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _becontroller.dispose();
    super.dispose();
  }

  String? get _errorText {
    final text = _controller.value.text;

    if (text.isEmpty) {
      return 'Password cannot be blank';
    }
    if (text.length < 6) {
      return 'Must be minimum 6 characters';
    }
  }

  String? get _beErrorText {
    final text = _becontroller.value.text;

    if (text.isEmpty) {
      return 'Start Date cannot be blank';
    }
    if (text.length < 6) {
      return 'invalid date format, Please try again';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.ErrorSuggestions.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ErrorSuggestions.name),
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
                    Text('The sample below shows an erroneous'
                        ' password field, sets the right error'
                        ' messages to it, and also suggests desired '
                        'length, The sample and allowed character'
                        ' details to help users correct the input.'),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password (required)',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                    ),
                    TextField(
                      controller: _controller,
                      obscureText: true,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password',
                        errorText: _errorText,
                      ),
                      onChanged: (text) => setState(() => _text),
                    ),
                    ElevatedButton(
                      onPressed: _controller.value.text.isNotEmpty
                          ? () {
                              debugPrint('Clicked');
                            }
                          : null,
                      child: Text('SUBSCRIBE'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
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
                    Text('Sample below does almost everything right'
                        ' except that it misses suggestions to fix the error.'),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Start Date',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                    ),
                    TextField(
                      controller: _becontroller,
                      obscureText: true,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: 'Enter Start Date',
                        errorText: _beErrorText,
                      ),
                      onChanged: (text) => setState(() => _beText),
                    ),
                    ElevatedButton(
                      onPressed: _becontroller.value.text.isNotEmpty
                          ? () {
                              debugPrint('Clicked');
                            }
                          : null,
                      child: Text('SUBMIT'),
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
