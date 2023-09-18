import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCallPage extends StatefulWidget {
  const VideoCallPage({Key? key}) : super(key: key);

  @override
  State<VideoCallPage> createState() => _VideoCallPageState();
}

class _VideoCallPageState extends State<VideoCallPage> {

  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "b665b5dac8914fdd933b14a1950f5a8c",
      channelName: "flutter video calling",
      username: "Hammad Siddiqui",
      tempToken: "",
    ),
  );

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(
              client: client,
              layoutType: Layout.floating,
              enableHostControls: true,
              showNumberOfUsers: true,
            ),
            AgoraVideoButtons(
              client: client,
              enabledButtons: [
                BuiltInButtons.toggleCamera,
                BuiltInButtons.callEnd,
                BuiltInButtons.toggleMic,
                BuiltInButtons.switchCamera
              ],
            ),
          ],
        ),
      ),
    ), onWillPop:() async => false,);
  }
}
