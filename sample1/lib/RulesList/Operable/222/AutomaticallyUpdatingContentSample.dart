import 'package:sample1/importFiles.dart';
import 'dart:async';

class AutomaticallyUpdatingContentSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AutomaticallyUpdatingContentSampleState();
  }
}

class AutomaticallyUpdatingContentSampleState extends State<AutomaticallyUpdatingContentSample> {
  final String ruleDescription =
      'Automatically updating content must be able to be paused,'
      ' stopped, or hidden by the user or the user can'
      ' manually control the timing of the updates.';
  final String geDescription = 'For the collection of images, '
      'a normal user will scroll to see the next images.'
      ' We need to provide user input actions also to move '
      'to the next and previous images.';
  final String beDescription = 'For the collection images, there is no'
      ' option to move to next and previous images based on user input actions.';


  ScrollController _scrollController = new ScrollController();
  ScrollController _bescrollController = new ScrollController();

  List imagesArray = ['assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png','assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png'];

  late Timer _timer;
  late Timer _betimer;

  double listItemWidth = 200;
  double indexis = 0;
  double beindexis = 0;
  var isAnimationPause = false;

  void pauseGoodAnimation() {
    _timer.cancel();
  }

  void startAutoScrollTimer() {
    const oneSec = const Duration(seconds: 2);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (indexis == imagesArray.length -1) {
          indexis = 0;
        } else {
          indexis += 1;
        }
        scrollToIndex();
      });
    });
  }

  void startAutoScrollBadTimer() {
    const oneSec = const Duration(seconds: 2);
    _betimer = new Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (beindexis == imagesArray.length-1) {
          beindexis = 0;
        } else {
          beindexis += 1;
        }
        beScrollToIndex();
      });
    });
  }

  initState(){
    startAutoScrollTimer();
    startAutoScrollBadTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    _betimer.cancel();
    super.dispose();
  }

  void scrollToIndex(){
    _scrollController.animateTo(listItemWidth * indexis,
        duration: const Duration(microseconds: 2), curve: Curves.easeInCirc);
  }

  void beScrollToIndex(){
    _bescrollController.animateTo(listItemWidth * beindexis,
        duration: const Duration(microseconds: 2), curve: Curves.easeInCirc);
  }

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
                  SizedBox(height: 5,),
                  Text(ruleDescription),
                ],
              ),
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
            ),

            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText(
                        'Good Example: Provides a button to control play/pause of the image-slider.'),
                  ),
                  Text(geDescription),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: listItemWidth,
              height: 200,
              child: ListView(
                controller: _scrollController,
                // This next line does the trick.
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Image(
                    image: AssetImage(imagesArray[0]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[1]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[2]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[3]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[4]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[5]),
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                isAnimationPause = !isAnimationPause;
                if(isAnimationPause) {
                  pauseGoodAnimation();
                } else {
                  startAutoScrollTimer();
                }
              });
            },child: Text(isAnimationPause ? 'Pause' :'Play'),),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: HeaderSemanticWithText(
                        'Bad Example: Provides no mechanism to pause/stop'
                            ' moving content/control.'),
                  ),
                  Text(beDescription),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: listItemWidth,
              height: 200,
              child: ListView(
                controller: _bescrollController,
                // This next line does the trick.
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Image(
                    image: AssetImage(imagesArray[0]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[1]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[2]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[3]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[4]),
                    fit: BoxFit.fitWidth,
                  ),
                  Image(
                    image: AssetImage(imagesArray[5]),
                    fit: BoxFit.fitWidth,
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
