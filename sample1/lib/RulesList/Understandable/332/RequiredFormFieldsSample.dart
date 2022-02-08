import 'package:sample1/importFiles.dart';

class RequiredFormFieldsSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RequiredFormFieldsSampleState();
  }
}

class RequiredFormFieldsSampleState extends State<RequiredFormFieldsSample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _badformKey = GlobalKey<FormState>();

  final String ruleDescription =
      ' Labels, instructions, or error messages must be '
      'provided when form fields require user input.';
  var isToshowError = false;
  var isBENameExist = false;
  var isBEIdExist = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.RequiredFormFields.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.RequiredFormFields.name),
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
                    Text('The sample provided below includes instructions'
                        ' for the mandatory fields. The instruction is '
                        'provided as part of the associated visible label'
                        ' for the input fields.'),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Full Name(required)',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            maxLines: 1,
                            minLines: 1,
                            decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: 'Enter Full Name'),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return ''
                                    'Enter valid name';
                              } else {
                                debugPrint('Value is $value');
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Email Id(required)',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            maxLines: 1,
                            minLines: 1,
                            decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: 'Enter Email Id'),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter valid Email Id';
                              } else {
                                debugPrint('Value is $value');
                              }
                            },
                          ),
                          ElevatedButton(
                            onPressed: () {
                              debugPrint('Clicked');
                              if (_formKey.currentState!.validate()) {}
                            },
                            child: Text('SUBSCRIBE'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText('Bad Example'),
                  ),
                  Text('The sample below misses the additional '
                      'information as it\'s required data input.'),
                  SizedBox(
                    height: 15,
                  ),
                  isToshowError
                      ? Text(
                          'Below form cannot be submitted please check',
                          style: TextStyle(
                              fontWeight: FontWeight.w100, color: Colors.red),
                        )
                      : new Container(),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Full Name',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                  TextField(
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(),
                      hintText: "Enter Full Name",
                    ),
                    onChanged: (value) {
                      isBENameExist = value.isEmpty;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email Id',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 15),
                    ),
                  ),
                  TextField(
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(),
                      hintText: "Enter Email Id",
                    ),
                    onChanged: (value) {
                      isBEIdExist = value.isEmpty;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Clicked');
                      if (_badformKey.currentState!.validate()) {
                        setState(() {
                          if (isBEIdExist == false && isBENameExist == false) {
                            isToshowError = !isToshowError;
                          }
                        });
                      }
                    },
                    child: Text('SUBSCRIBE'),
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
