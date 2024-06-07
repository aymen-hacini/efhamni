
import 'package:flutter/material.dart';

class OfflineFailure extends StatelessWidget {
  const OfflineFailure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Please Check Your Connection",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
          height: 50,
        ),
        // Center(
        //   child: Lottie.asset(ImageConstant.lottieConnectionOffline,
        //       height: 400, width: 400, repeat: true, fit: BoxFit.fill),
        // ),
      ],
    );
  }
}
