

import 'package:efhamnidz/core/utils/class/requeststatus.dart';

handlingData(response) {
  if (response is RequestStatus) {
    return response;
  } else {
    return RequestStatus.success;
  }
}
