// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Card extends StatelessWidget {
//
//   late String title;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Center(
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         color: Color(0xffECFDF3),
//         child: ListTile(
//             title: Row(
//               children: [
//                 Column(
//
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
//                       child: Text('${title}',
//                         style:Theme.of(context).textTheme.bodySmall,
//
//                       ),
//                     ),
//                     Text('Morning Yoga',
//                       style:Theme.of(context).textTheme.bodyLarge,
//                     ),
//
//                     Text('improve mental focus',
//                       style: Theme.of(context).textTheme.bodySmall,),
//                     SizedBox(height: 10,),
//                     Row(children: [
//                       Icon(Icons.access_time),
//                       Text('30 mins')
//                     ],)
//
//                   ],
//                 ),
//                 Image.asset('assets/images/[removal 2.png')
//               ],
//             )),
//       ),
//     );
//   }
// }
