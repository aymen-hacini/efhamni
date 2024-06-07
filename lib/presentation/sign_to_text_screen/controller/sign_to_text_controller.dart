import 'package:camera/camera.dart';
import 'package:efhamnidz/main.dart';
import 'package:tflite/tflite.dart';

import '../../../core/app_export.dart';
import '../models/sign_to_text_model.dart';

/// A controller class for the SignToTextScreen.
///
/// This class manages the state of the SignToTextScreen, including the
/// current signToTextModelObj
class SignToTextController extends GetxController {
  Rx<SignToTextModel> signToTextModelObj = SignToTextModel().obs;
  CameraController? cameraController;
  late CameraImage? cameraImage;
  int currentcameraindex = 1;

  String answer = "";
  bool isreading = false;

  loadModel() async {
    Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }

  startModel()  async {
    
        cameraController!.initialize().then((value) {
        cameraController?.startImageStream((image) {
          if (true) {
            cameraImage = image;
            applyImagesOnModel();
          }
        });
        update();
      });
  
     
  }

  stopModel() {
    isreading = false;
    cameraController!.stopImageStream();
  }

  applyImagesOnModel() async {
    isreading = true;
    var predictions = await Tflite.runModelOnFrame(
        bytesList: cameraImage!.planes.map(
          (plane) {
            return plane.bytes;
          },
        ).toList(),
        imageHeight: cameraImage!.height,
        imageWidth: cameraImage!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 2,
        threshold: 0.45,
        asynch: true);
    answer = "";
    for (var prediction in predictions!) {
      answer += prediction['label'].toString().substring(1) +
          " " +
          ((prediction['confidence'] as double) * 100).toStringAsFixed(0) +
          "%" +
          '\n';
      update();
    }
  }

  void changeCamera() {
    cameraController =
        CameraController(cameras![currentcameraindex], ResolutionPreset.low);
    cameraController!.initialize().then((value) {
        cameraController?.startImageStream((image) {
          if (true) {
            cameraImage = image;
            applyImagesOnModel();
          }
        });
        update();
      });
    update();
  }

  @override
  void onInit() {
    cameraController =
        CameraController(cameras![currentcameraindex], ResolutionPreset.low);
    loadModel();
    super.onInit();
  }

  @override
  void dispose() async {
    cameraController!.dispose();
    await Tflite.close();
    super.dispose();
  }

  @override
  void onClose() async {
    cameraController!.dispose();
    await Tflite.close();
    super.onClose();
  }
}
