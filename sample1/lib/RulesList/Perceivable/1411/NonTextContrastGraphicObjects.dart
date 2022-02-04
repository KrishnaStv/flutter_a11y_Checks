import 'package:sample1/importFiles.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/semantics.dart';

class NonTextContrastGraphicalObjects extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NonTextContrastGraphicalObjectsState();
  }
}

class NonTextContrastGraphicalObjectsState extends State<NonTextContrastGraphicalObjects> {
  final String ruleDescription =
      'Parts of graphics (required to understand the content) have a '
      'contrast ratio of 3 to 1 against adjacent color(s). Exceptions exist.';

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }

  var geCurrentRating = 2;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBarExtension(
          navdata: TopBarData(
              title: SCs.NonTextContrastGraphicalObjects.pageTitle,
              enableBack: true)),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      HeaderSemanticWithText(
                          SCs.NonTextContrastGraphicalObjects.name),
                    ],
                  ),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: HeaderSemanticWithText('Good Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(' For graphical animations like rating view, '
                        'we need to maintain color contrast'),
                    SizedBox(
                      height: 15,
                    ),
                    Semantics(
                      label: 'Good Example Rating View',
                      child: RatingBar(
                        initialRating: geCurrentRating.toDouble(),
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: getImageFromPath('assets/images/geFillStar.png'),
                          half: getImageFromPath('assets/images/halfStar.png'),
                          empty: getImageFromPath('assets/images/emptyStar.png'),
                        ),
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      customSemanticsActions: {
                        CustomSemanticsAction(label: "Increment"): () {
                          setState(() {
                            geCurrentRating = geCurrentRating+1;
                          });
                        },
                        CustomSemanticsAction(label: "Decrement"): () {
                          setState(() {
                            geCurrentRating = geCurrentRating-1;
                          });
                        },
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: HeaderSemanticWithText('Bad Example'),
            ),
            Semantics(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                        'For any input action buttons, maintain boundaries to detect'),
                    SizedBox(
                      height: 15,
                    ),
                    Semantics(
                      child: RatingBar(
                        initialRating: 3,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: getImageFromPath('assets/images/beFillStar.png'),
                          half: getImageFromPath('assets/images/halfStar.png'),
                          empty: getImageFromPath('assets/images/emptyStar.png'),
                        ),
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      label: 'Bad Example Rating View',
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
