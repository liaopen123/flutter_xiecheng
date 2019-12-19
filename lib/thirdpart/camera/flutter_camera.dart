import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class FlutterCamera extends StatefulWidget {
  @override
  _FlutterCameraState createState() => _FlutterCameraState();
}

class _FlutterCameraState extends State<FlutterCamera> {
  bool enableAudio = true;
  String camera_position = "null";

  CameraController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: Container(
                child: Center(
                  child: _cameraWidget(),
                ),
              ),
            ),
          ),
          _photoVideoBar(),
          Padding(
          padding: EdgeInsets.only(top: 20),
          child:_bootom(),
          ),
        ],
      ),
    );
  }

  Widget _photoVideoBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _videoItem(fun: _takePhoto, icons: Icons.camera_enhance),
        _videoItem(fun: _takePhoto, icons: Icons.videocam),
        _videoItem(fun: _takePhoto, icons: Icons.pause),
        _videoItem(fun: _takePhoto, icons: Icons.stop),
      ],
    );
  }

  Widget _bootom() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[

             _toggleWidget(),

              _radiogroup(),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,

            child: Container(
              width: 150,
              alignment: Alignment.bottomRight,
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Image(
                  image: AssetImage("images/fatcat.jpg"),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  _takePhoto() {
    Toast.show("takePhto", context);
  }

  Widget _videoItem({Function fun, IconData icons}) {
    return InkWell(
      onTap: fun,
      child: Icon(
        icons,
        color: Colors.grey,
      ),
    );
  }

  Widget _toggleWidget() {
    return Row(
      children: <Widget>[
        Text("录制音频"),
        Switch(
            value: enableAudio,
            onChanged: (value) {
              setState(() {
                enableAudio = value;
              });
            }),
      ],
    );
  }

  Widget _radiogroup() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          Radio(
              value: "front",
              groupValue: camera_position,
              onChanged: (String value) {
                setState(() {
                  camera_position = value;
                  turnOnCamera(camera_position);
                });
              }),
          Icon(Icons.camera_front),
          Radio(
              value: "behind",
              groupValue: camera_position,
              onChanged: (String value) {
                setState(() {
                  setState(() {
                    camera_position = value;
                    turnOnCamera(camera_position);
                  });
                });
              }),
          Icon(Icons.camera_rear),
        ],
      ),
    );
  }
  List<CameraDescription> cameras = [];
  Future turnOnCamera(String camera_position) async {
    if(controller==null||!controller.value.isInitialized){
      cameras = await availableCameras();

      setState(() {
        controller = CameraController(
          cameras[0],
          ResolutionPreset.medium,
          enableAudio: enableAudio,
        );
      });



    }else{

    }


  }

  Widget _cameraWidget() {
      print("刷新镜头");
    if(controller==null||!controller.value.isInitialized){
      return Text("请选择摄像头");
    }else{
      return CameraPreview(controller);
    }

  }




}
