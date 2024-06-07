
// import 'package:efhamnidz/core/app_export.dart';
// import 'package:efhamnidz/core/errors/failures.dart';
// import 'package:efhamnidz/core/utils/class/requeststatus.dart';
// import 'package:efhamnidz/presentation/Error/nodata.dart';
// import 'package:efhamnidz/presentation/Error/offline.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class HandlingDataView extends StatelessWidget {
//   final RequestStatus status;
//   final Widget widget;
//   const HandlingDataView(
//       {super.key, required this.status, required this.widget});

//   @override
//   Widget build(BuildContext context) {
//     return status == RequestStatus.loading
//         ? LoadingWidget()
//         : status == RequestStatus.serverfailure
//             ?  ServerFailure()
//             : status == RequestStatus.offlinefailure
//                 ?  OfflineFailure()
//                 : status == RequestStatus.valuefailure
//                     ?  NoDataAvaiable()
//                     : widget;
//   }
// }

// class LoadingWidget extends StatelessWidget {
//   const LoadingWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Lottie.asset(ImageConstant.imageNotFound,
//             frameRate: FrameRate.max,
//             width: 150,
//             height: 150,
//             repeat: true));
//   }
// }
