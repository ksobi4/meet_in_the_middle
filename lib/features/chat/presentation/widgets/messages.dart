// import 'package:flutter/material.dart';

// class MessageOwnTile extends StatelessWidget {
//   const MessageOwnTile({
//     Key? key,
//     required this.message,
//   }) : super(key: key);

//   final Message message;

//   static const _borderRadius = 26.0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Align(
//         alignment: Alignment.centerRight,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Container(
//               decoration: const BoxDecoration(
//                 color: AppColors.secondary,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(_borderRadius),
//                   bottomRight: Radius.circular(_borderRadius),
//                   bottomLeft: Radius.circular(_borderRadius),
//                 ),
//               ),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
//                 child: Text(message.text ?? '',
//                     style: const TextStyle(
//                       color: AppColors.textLigth,
//                     )),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Text(
//                 Jiffy(message.createdAt.toLocal()).jm,
//                 style: const TextStyle(
//                   color: AppColors.textFaded,
//                   fontSize: 10,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MessageTile extends StatelessWidget {
//   const MessageTile({
//     Key? key,
//     required this.message,
//   }) : super(key: key);

//   final Message message;

//   static const _borderRadius = 26.0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 color: Theme.of(context).cardColor,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(_borderRadius),
//                   topRight: Radius.circular(_borderRadius),
//                   bottomRight: Radius.circular(_borderRadius),
//                 ),
//               ),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
//                 child: Text(message.text ?? ''),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Text(
//                 Jiffy(message.createdAt.toLocal()).jm,
//                 style: const TextStyle(
//                   color: AppColors.textFaded,
//                   fontSize: 10,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
