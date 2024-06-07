
// import 'package:efhamnidz/core/errors/failures.dart';
// import 'package:efhamnidz/core/utils/class/Handlingdataview.dart';
// import 'package:efhamnidz/core/utils/class/requeststatus.dart';
// import 'package:efhamnidz/presentation/Error/offline.dart';
// import 'package:flutter/material.dart';

// class HandlingDataRequest extends StatelessWidget {
//   final RequestStatus status;
//   final Widget hi;
//   const HandlingDataRequest(
//       {super.key, required this.status, required this.widget});

//   @override
//   Widget build(BuildContext context) {
//     return status == RequestStatus.loading
//         ? const LoadingWidget()
//         : status == RequestStatus.serverfailure
//             ? const ServerFailure()
//             : status == RequestStatus.offlinefailure
//                 ? const OfflineFailure()
//                 : hi;
//   }
// }
