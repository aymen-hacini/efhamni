import '../../../core/app_export.dart';
import '../models/profile_container_model.dart';

/// A controller class for the ProfileContainerScreen.
///
/// This class manages the state of the ProfileContainerScreen, including the
/// current profileContainerModelObj
class ProfileContainerController extends GetxController {
  Rx<ProfileContainerModel> profileContainerModelObj =
      ProfileContainerModel().obs;
}
