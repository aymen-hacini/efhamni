
import 'package:flutter/material.dart';

class ServerFailure extends StatelessWidget {
  const ServerFailure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "There is a problem with our servers\n thank you for your patience",
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        // Center(
        //   child: Lottie.asset(ima.lottieServerOffline,
        //       height: 400, width: 400, repeat: true, fit: BoxFit.fill),
        // ),
      ],
    );
  }
}

