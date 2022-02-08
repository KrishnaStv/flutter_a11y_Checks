import 'package:sample1/importFiles.dart';
import 'package:flutter/semantics.dart';

class StatusMessagesSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new StatusMessagesSampleState();
  }
}

class StatusMessagesSampleState extends State<StatusMessagesSample> {
  final _controller = TextEditingController();
  final _becontroller = TextEditingController();

  final String ruleDescription = 'Ensure that status messages can be '
      'programmatically determined through role or properties'
      ' such that they can be presented to the user by assistive '
      'technologies without receiving focus.';
  var _text = '';
  var _beText = '';

  var isToShowGEMobileRegistration = false;
  var isToShowGEShoppingcart = false;

  var isToShowBEMobileRegistration = false;
  var isToShowBEShoppingcart = false;

  var geCodeSnippet1 = ' Future.delayed(Duration(milliseconds: 300), () { \n '
      'SemanticsService.announce("Blank Mobile Number", TextDirection.ltr); \n '
      '});';

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _becontroller.dispose();
    super.dispose();
  }

  String? get registrationStatus {
    final text = _controller.value.text;

    if (text.isEmpty) {
      return 'Blank Mobile Number';
    } else {
      return 'Registration Successful';
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
              title: SCs.StatusMessages.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.StatusMessages.name),
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
                padding: EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('Good Example: For any status '
                    'messages or response messages convey that information '
                    'to sight/vision disability user'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Login Form - After success response from the server'
                      ' VoiceOver MUST have to inform the user. /n '
                      'For the login form field, After submitting'
                      ' the button, we are informing the user that'
                      ' \'Loading\'. \n'
                      'Once the API request is successful, we are '
                      'representing on toast message to the user, '
                      'we are announcing that message to the user '
                      'via VoiceOver.'),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Entre Mobile Number',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                  TextField(
                    controller: _controller,
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(),
                      hintText: '',
                    ),
                    onChanged: (text) => setState(() => _text),
                  ),
                  isToShowGEMobileRegistration
                      ? Text(registrationStatus ?? '')
                      : new Container(),
                  Semantics(
                    label: 'Good Example Submit',
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_controller.value.text.isEmpty) {
                            Future.delayed(Duration(milliseconds: 300), () {
                              SemanticsService.announce(
                                  "Blank Mobile Number", TextDirection.ltr);
                            });
                          } else {
                            Future.delayed(Duration(milliseconds: 300), () {
                              SemanticsService.announce(
                                  "Registration Successful", TextDirection.ltr);
                            });
                          }
                          isToShowGEMobileRegistration =
                              !isToShowGEMobileRegistration;
                        });
                      },
                      child: Text('SUBMIT'),
                    ),
                  ),
                  Text(
                      'VoiceOver will announce as \'Registration Successful\''),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            HeaderSemanticWithText('Code Snippet'),
                          ],
                        ),
                        Container(
                          color: Colors.black,
                          child: Text(
                            geCodeSnippet1,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('For any user actions to update'
                      ' the cart, wallet, favorites sections.'
                      ' We need to inform the user'),
                  SizedBox(
                    height: 15,
                  ),
                  isToShowGEShoppingcart
                      ? Text('Shopping Cart, 2 items')
                      : new Container(),
                  Semantics(
                    label: 'Good Example Add to Cart',
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isToShowGEShoppingcart = !isToShowGEShoppingcart;
                          Future.delayed(Duration(milliseconds: 300), () {
                            SemanticsService.announce(
                                "Shopping Cart, 2 items", TextDirection.ltr);
                          });
                        });
                      },
                      child: Text('ADD TO CART'),
                    ),
                  ),
                  Text('VoiceOver will announce as \'Shopping Cart, 2 items\''),
                  Divider(),
                ],
              ),
            ),
            Semantics(
              child: Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Bad Example: For any status '
                    'messages or response messages not convey that '
                    'information to sight/vision disability user '),
              ),
            ),
             Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Login Form - After success '
                        'response from the server, no  information the user'),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Entre Mobile Number',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                    ),
                    TextField(
                      controller: _controller,
                      maxLines: 1,
                      minLines: 1,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: '',
                      ),
                      onChanged: (text) => setState(() => _text),
                    ),
                    isToShowBEMobileRegistration
                        ? Text(registrationStatus ?? '')
                        : new Container(),
                    Semantics(
                      label: 'Bad Example Submit',
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isToShowBEMobileRegistration =
                                !isToShowBEMobileRegistration;
                          });
                        },
                        child: Text('SUBMIT'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text('For any user actions to update'
                              ' the cart, wallet, favorites sections.'
                              ' No information to the user'),
                          SizedBox(
                            height: 15,
                          ),
                          isToShowBEShoppingcart
                              ? Text('Shopping Cart, 2 items')
                              : new Container(),
                          Semantics(
                            label: 'Bad Example Add to cart',
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isToShowBEShoppingcart =
                                      !isToShowBEShoppingcart;
                                });
                              },
                              child: Text('ADD TO CART'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 75,),
          ],
        ),
      ),
    );
  }
}
