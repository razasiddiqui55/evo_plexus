// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mime/mime.dart';
// import 'package:uuid/uuid.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'dart:io';
// import 'package:open_filex/open_filex.dart';
// import 'package:path_provider/path_provider.dart';
//
// class ChatUI extends StatefulWidget {
//   const ChatUI({Key? key}) : super(key: key);
//
//   @override
//   State<ChatUI> createState() => _ChatUIState();
// }
//
// class _ChatUIState extends State<ChatUI> {
//
//   List<types.Message> _messages = [];
//   final _user =  types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
//   // AuthController authController = Get.put(AuthController());
//
//   @override
//   void initState() {
//     super.initState();
//     // _loadMessages();
//   }
//
//   // List<Message> messages = [
//   //   Message(
//   //     text: "Yes Sure!",
//   //     datetime: DateTime.now().subtract(Duration(minutes: 1)),
//   //     isSenByme: false,
//   //   ),
//   //   Message(
//   //       text: "Hello",
//   //       datetime: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
//   //       isSenByme: false,
//   //   ),
//   //   Message(
//   //     text: "Yes Sure!",
//   //     datetime:   DateTime.now().subtract(Duration(days: 3, minutes: 4)),
//   //     isSenByme: false,
//   //   ),
//   //   Message(
//   //     text: "Yes Sure!",
//   //     datetime:   DateTime.now().subtract(Duration(days: 3, minutes: 3)),
//   //     isSenByme: false,
//   //   ),
//   //   Message(
//   //     text: "Yes Sure!",
//   //     datetime:   DateTime.now().subtract(Duration(days: 3, minutes: 2)),
//   //     isSenByme: false,
//   //   ),
//   // ].reversed.toList();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Chat(
//           theme: DefaultChatTheme(
//             inputTextCursorColor: Color(0xff8C8C8C),
//             inputTextStyle: TextStyle(
//               color: Colors.white,
//               fontFamily: "Rubik",
//               fontWeight: FontWeight.w400,
//               fontStyle: FontStyle.italic,
//               fontSize: 12,
//             ),
//             // primaryColor: Color(Helpers.secondry),
//             secondaryColor: Colors.white,
//             backgroundColor:Colors.white,
//             inputBorderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//             inputBackgroundColor: Colors.grey,
//             inputMargin: EdgeInsets.symmetric(
//               horizontal: 20,
//               vertical: 10,
//             ),
//             inputContainerDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(40),
//               // boxShadow: [Helpers.box_shodow],
//             ),
//           ),
//           disableImageGallery: true,
//           messages: _messages,
//           onAttachmentPressed: _handleAttachmentPressed,
//           onMessageTap: _handleMessageTap,
//           onPreviewDataFetched: _handlePreviewDataFetched,
//           onSendPressed: _handleSendPressed,
//           showUserAvatars: true,
//           showUserNames: true,
//           user: _user,
//         ),
//       ),
//     );
//   }
//
//     void _addMessage(types.Message message) {
//       setState(() {
//         _messages.insert(0, message);
//       });
//     }
//
//     void _handleAttachmentPressed() {
//       showModalBottomSheet<void>(
//         context: context,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30),
//             topRight: Radius.circular(30),
//           ),
//         ),
//         // backgroundColor: Color(Helpers.primary),
//         builder: (BuildContext context) => SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: SizedBox(
//               height: 144,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                       _handleImageSelection();
//                     },
//                     child: Align(
//                       alignment: AlignmentDirectional.centerStart,
//                       child: Text("Picture"),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                       _handleFileSelection();
//                     },
//                     child: Align(
//                       alignment: AlignmentDirectional.centerStart,
//                       child: Text("Documents"),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () => Navigator.pop(context),
//                     child: Align(
//                       alignment: AlignmentDirectional.centerStart,
//                       child: Text("Vidoe"),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//
//     void _handleFileSelection() async {
//       final result = await FilePicker.platform.pickFiles(
//         type: FileType.any,
//       );
//
//       if (result != null && result.files.single.path != null) {
//         final message = types.FileMessage(
//           author: _user,
//           createdAt: DateTime.now().millisecondsSinceEpoch,
//           id: const Uuid().v4(),
//           mimeType: lookupMimeType(result.files.single.path!),
//           name: result.files.single.name,
//           size: result.files.single.size,
//           uri: result.files.single.path!,
//         );
//
//         _addMessage(message);
//       }
//     }
//
//     void _handleImageSelection() async {
//       final result = await ImagePicker().pickImage(
//         imageQuality: 70,
//         maxWidth: 1440,
//         source: ImageSource.gallery,
//       );
//
//       if (result != null) {
//         final bytes = await result.readAsBytes();
//         final image = await decodeImageFromList(bytes);
//
//         final message = types.ImageMessage(
//           author: _user,
//           createdAt: DateTime.now().millisecondsSinceEpoch,
//           height: image.height.toDouble(),
//           id: const Uuid().v4(),
//           name: result.name,
//           size: bytes.length,
//           uri: result.path,
//           width: image.width.toDouble(),
//         );
//
//         _addMessage(message);
//       }
//     }
//
//     void _handleMessageTap(BuildContext _, types.Message message) async {
//       if (message is types.FileMessage) {
//         var localPath = message.uri;
//
//         if (message.uri.startsWith('http')) {
//           try {
//             final index =
//             _messages.indexWhere((element) => element.id == message.id);
//             final updatedMessage =
//             (_messages[index] as types.FileMessage).copyWith(
//               isLoading: true,
//             );
//
//             setState(() {
//               _messages[index] = updatedMessage;
//             });
//
//             final client = http.Client();
//             final request = await client.get(Uri.parse(message.uri));
//             final bytes = request.bodyBytes;
//             final documentsDir = (await getApplicationDocumentsDirectory()).path;
//             localPath = '$documentsDir/${message.name}';
//
//             // if (!File(localPath).existsSync()) {
//             //   final file = File(localPath);
//             //   await file.writeAsBytes(bytes);
//             // }
//           } finally {
//             final index =
//             _messages.indexWhere((element) => element.id == message.id);
//             final updatedMessage =
//             (_messages[index] as types.FileMessage).copyWith(
//               isLoading: null,
//             );
//
//             setState(() {
//               _messages[index] = updatedMessage;
//             });
//           }
//         }
//
//         await OpenFilex.open(localPath);
//       }
//     }
//
//     void _handlePreviewDataFetched(
//         types.TextMessage message,
//         types.PreviewData previewData,
//         ) {
//       final index = _messages.indexWhere((element) => element.id == message.id);
//       final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
//         previewData: previewData,
//       );
//
//       setState(() {
//         _messages[index] = updatedMessage;
//       });
//     }
//
//     void _handleSendPressed(types.PartialText message) {
//       final textMessage = types.TextMessage(
//         author: _user,
//         createdAt: DateTime.now().millisecondsSinceEpoch,
//         updatedAt: DateTime.now().microsecondsSinceEpoch,
//         id: const Uuid().v4(),
//         text: message.text,
//       );
//
//       _addMessage(textMessage);
//     }
//
//     // void _loadMessages() async {
//     //   final response = await rootBundle.loadString('assets/messages.json');
//     //   final messages = (jsonDecode(response) as List)
//     //       .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
//     //       .toList();
//
//     //   setState(() {
//     //     _messages = messages;
//     //   });
//     // }
//   }
//
//       // Column(
//       //   children: [
//       //     Expanded(
//       //       child: GroupedListView<Message, DateTime>(
//       //         padding: EdgeInsets.all(8),
//       //         reverse: true,
//       //         order: GroupedListOrder.DESC,
//       //         useStickyGroupSeparators: true,
//       //         floatingHeader: true,
//       //         elements: messages,
//       //         groupBy: (message) => DateTime(
//       //           message.datetime.year,
//       //           message.datetime.month,
//       //           message.datetime.day,
//       //         ),
//       //         groupHeaderBuilder: (Message message) => SizedBox(
//       //             // height: 40,
//       //             // child: Center(
//       //             //   child: Card(
//       //             //     color: Colors.redAccent,
//       //             //     child: Text("Hello",
//       //             //     style: TextStyle(color: Colors.white),),
//       //             //   ),
//       //             // ),
//       //             ),
//       //         itemBuilder: (context, Message message) => Align(
//       //           alignment: message.isSenByme
//       //               ? Alignment.centerRight
//       //               : Alignment.centerLeft,
//       //           child: Card(
//       //             elevation: 8,
//       //             child: Padding(
//       //               padding: const EdgeInsets.all(12.0),
//       //               child: Text(message.text),
//       //             ),
//       //           ),
//       //         ),
//       //       ),
//       //     ),
//       //     Container(
//       //       color: Colors.white,
//       //       child: TextField(
//       //         decoration: InputDecoration(
//       //             contentPadding: EdgeInsets.all(12), hintText: "Search..."),
//       //         onSubmitted: (text){
//       //           final message  = Message(
//       //             text: "Yes Sure!",
//       //             datetime: DateTime.now(),
//       //             isSenByme: true,
//       //           );
//       //           setState(() {
//       //             messages.add(message);
//       //           });
//       //         },
//       //       ),
//       //     ),
//       //   ],
//       // ),
//
// // class Message {
// //   final String text;
// //   final DateTime datetime;
// //   final bool isSenByme;
// //
// //   Message(
// //       {required this.text, required this.datetime, required this.isSenByme});
// // }
