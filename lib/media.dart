// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'common_files/titles.dart';
//
// class Media extends StatefulWidget {
//   @override
//   _MediaState createState() => _MediaState();
// }
//
// class _MediaState extends State<Media> {
//   VideoPlayerController playerController;
//
//   // VoidCallback listener;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print('fatma2');
//     playerController = VideoPlayerController.network(
//         'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
//       ..addListener(() {
//         setState(() {});
//       })
//       ..setLooping(true)
//       ..initialize().then((value) => {playerController.play()});
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     playerController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('fatma1');
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Expanded(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Card(
//                 elevation: 10,
//                 child: playerController.value.isInitialized
//                     ? AspectRatio(
//                         aspectRatio: playerController.value.aspectRatio,
//                         child: VideoPlayer(playerController))
//                     : SizedBox(
//                         height: 10,
//                         width: 10,
//                         child: CircularProgressIndicator()),
//               ),
//               OutlinedButton(
//                   onPressed: () {
//                     setState(() {
//                       print('fatma');
//                       playerController.value.isPlaying
//                           ? playerController.pause()
//                           : playerController.play();
//                     });
//                   },
//                   child: Icon(Icons.play_arrow))
//             ],
//           ),
//         ),
//         Expanded(
//           child: Titles(
//             title: 'ghfhg',
//           ),
//         )
//       ],
//     );
//   }
// }
