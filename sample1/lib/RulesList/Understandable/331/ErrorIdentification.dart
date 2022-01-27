import 'package:sample1/importFiles.dart';

class ErrorIdentificationSample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ErrorIdentificationSampleState();
  }
}

class ErrorIdentificationSampleState extends State<ErrorIdentificationSample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _badFormKey = GlobalKey<FormState>();

  final String ruleDescription = ' Efficient, intuitive and clearly '
      'identified text based alerts MUST be provided to users'
      ' for form validation cues and errors.';

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
          navdata:
          TopBarData(title: SCs.ErrorIdentification.pageTitle, enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(SCs.ErrorIdentification.name),
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
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Good Example'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('The sample below shows an error '
                      'if  Username field for being blank. \n '
                      ' An error label will be visible.'),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                    key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Email',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 1,
                            minLines: 1,
                            decoration: InputDecoration(
                              isDense: true,
                                border: OutlineInputBorder(),
                                hintText: 'Enter Email'
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter valid Email';
                              } else {
                                debugPrint('Value is $value');
                              }
                            },
                          ),
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Password',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                          TextFormField(
                            obscureText: true,
                            maxLines: 1,
                            minLines: 1,
                            decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                hintText: 'Enter Password'
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter valid password';
                              } else {
                                debugPrint('Value is $value');
                              }
                            },
                          ),
                          ElevatedButton (
                            onPressed: () {
                              debugPrint('Clicked');
                              if(_formKey.currentState!.validate()) {

                              }
                            },
                            child: Text('Submit'),
                          ),
                        ],
                      ),
                  ),
                ],
              ),
            ),
            Semantics(
              child: Container(
                alignment: Alignment.topLeft,
                child: HeaderSemanticWithText('  Bad Example'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('The sample below makes it difficult for '
                      'assistive technology users to identify'
                      ' errors in the field. Error messages are'
                      ' not associated with the field and the'
                      ' focus is not moved to the first '
                      'erroneous field.'),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                    key: _badFormKey,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('User Name',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          minLines: 1,
                          decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              hintText: 'Enter User Name'
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return '';
                            } else {
                              debugPrint('Value is $value');
                            }
                          },
                        ),
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('Password',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ),
                        TextFormField(
                          obscureText: true,
                          maxLines: 1,
                          minLines: 1,
                          decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              hintText: 'Enter Password'
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return '';
                            } else {
                              debugPrint('Value is $value');
                            }
                          },
                        ),
                        ElevatedButton (
                          onPressed: () {
                            debugPrint('Clicked');
                            if(_badFormKey.currentState!.validate()) {

                            }
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    ),
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