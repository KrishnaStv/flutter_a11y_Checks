import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRatingExample extends StatelessWidget {

  Image getImageFromPath(String path) {
    var assertImagePAth = new AssetImage(path);
    return new Image(
      image: assertImagePAth,
      fit: BoxFit.cover,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating View'),
      ),
      body: Center(
        child:Column(
          children: [
            // RatingBar.builder(
            //   initialRating: 3,
            //   minRating: 1,
            //   direction: Axis.horizontal,
            //   allowHalfRating: true,
            //   itemCount: 5,
            //   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            //   itemBuilder: (context, _) => Icon(
            //     Icons.star,
            //     color: Colors.amber,
            //   ),
            //   onRatingUpdate: (rating) {
            //     print(rating);
            //   },
            // ),
        RatingBar(
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
          ],
        ),

        // SmoothStarRating(
        //     allowHalfRating: false,
        //     onRated: (v) {
        //     },
        //     starCount: 5,
        //     rating: 4,
        //     size: 40.0,
        //     isReadOnly:false,
        //     filledIconData: Icons.star,
        //     halfFilledIconData: Icons.star_border,
        //     color: Colors.yellow,
        //     borderColor: Colors.black,
        //     spacing:0.0
        // )
      ),
    );
  }
}

// class StarDisplayWidgetSample extends StatelessWidget {
//   late int value = 3;
//   final Widget filledStar;
//   final Widget unFilledStar;
//
//   const StarDisplayWidgetSample({
//     this.value = 0,
//     required this.filledStar,
//     required this.unFilledStar
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Star Rating view'),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: List.generate(5, (index) {
//           return
//               index < value ? filledStar : unFilledStar;
//         }),
//       ),
//     );
//   }
//
// }
//
// class StarDisplay extends StarDisplayWidgetSample {
//   const StarDisplay({Key key, int value = 0}) : super (
//     key:key,
//     value:value,
//     filledStar: const Icon(Icons.star),
//     unFilledStar: const Icon(Icons.star_border),
//   );
// }

// class StarDisplayWidget extends StatelessWidget {
//   final int value;
//   final Widget filledStar;
//   final Widget unfilledStar;
//
//   const StarDisplayWidget({
//     this.value = 0,
//     required this.filledStar,
//     required this.unfilledStar ,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Star Rating Widget'),
//       ),
//       body:  Row(
//         mainAxisSize: MainAxisSize.min,
//         children: List.generate(5, (index) {
//           return index < value ? filledStar : unfilledStar;
//         }),
//       ),
//     );
//   }
// }

// class StarDisplay extends StarDisplayWidget {
//   const StarDisplay({int value = 0})
//       : super(
//     value: value,
//     filledStar: const Icon(Icons.star),
//     unfilledStar: const Icon(Icons.star_border),
//   );
// }

// class StatefulStarRating extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int rating = 0;
//     return StatefulBuilder(
//       builder: (context, setState) {
//         return StarRating(
//           onChanged: (index) {
//             setState(() {
//               rating = index;
//             });
//           },
//           value: rating,
//         );
//       },
//     );
//   }
// }

// class StarRating extends StatelessWidget {
//   final void Function(int index) onChanged;
//   final int value;
//   final IconData filledStar;
//   final IconData unfilledStar;
//
//   const StarRating({
//     this.value = 0,
//     required this.onChanged,
//     required this.filledStar,
//     required this.unfilledStar,
//   }) ;
//
//   @override
//   Widget build(BuildContext context) {
//     final color = Theme.of(context).accentColor;
//     final size = 36.0;
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(5, (index) {
//         return IconButton(
//           onPressed: onChanged != null
//               ? () {
//             onChanged(value == index + 1 ? index : index + 1);
//           }
//               : null,
//           color: index < value ? color : null,
//           iconSize: size,
//           icon: Icon(
//             index < value ? filledStar  : unfilledStar,
//           ),
//           padding: EdgeInsets.zero,
//           tooltip: "${index + 1} of 5",
//         );
//       }),
//     );
//   }
// }