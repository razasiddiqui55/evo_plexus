import 'package:evo_plexus/Variables/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  List<types.Message> _messages = [];
  final _user = types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  // AuthController authController = Get.put(AuthController());

  @override
  void initState() {
    super.initState();
    // _loadMessages();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            "assets/images/bgimage.png",
            width: width,
          ).image,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                AppBar2(
                  image: "assets/images/Video.png",
                ),
                Column(
                  children: [
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      // height: height * 0.85,//688,
                      // height: 6,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Text(
                              "Dr. Prem Tiwari",
                              style: TextStyle(
                                color: Color(0xff025188),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Text(
                            "Orthopedic",
                            style: TextStyle(
                              color: Color(0xff8C8C8C),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(30),
                          //   topRight: Radius.circular(30),
                          // ),
                        ),
                        height: height * 0.78, //627.5,
                        child: SafeArea(
                          child: Chat(
                            theme: DefaultChatTheme(
                              inputTextCursorColor: Color(0xff8C8C8C),
                              inputTextColor: Color(0xff8C8C8C),
                              inputTextStyle: TextStyle(
                                color: Color(0xff8C8C8C),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                              ),
                              // primaryColor: Color(Helpers.secondry),
                              // secondaryColor: Colors.white,
                              // backgroundColor:Colors.white,
                              inputBorderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(25)),
                              inputBackgroundColor: Colors.grey.shade200,
                              inputContainerDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    // BoxShadow(
                                    //   // color: Color(0xff4DA0E6),
                                    //   blurRadius: 8,
                                    //     offset:  Offset(0, -3),
                                    // ),
                                  ]),
                            ),
                            disableImageGallery: true,
                            messages: _messages,
                            onAttachmentPressed: _handleAttachmentPressed,
                            onMessageTap: _handleMessageTap,
                            onPreviewDataFetched: _handlePreviewDataFetched,
                            onSendPressed: _handleSendPressed,
                            showUserAvatars: true,
                            showUserNames: true,
                            user: _user,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: height * 0.08, //60,
              left: 168,
              child: Image.asset(
                "assets/images/m1.png",
              ),
            ),
            Positioned(
              top: height * 0.15, //140,
              left: 215,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      // backgroundColor: Color(Helpers.primary),
      builder: (BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _handleImageSelection();
                  },
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text("Picture"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _handleFileSelection();
                  },
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text("Documents"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          // if (!File(localPath).existsSync()) {
          //   final file = File(localPath);
          //   await file.writeAsBytes(bytes);
          // }
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage =
              (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().microsecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }
}
