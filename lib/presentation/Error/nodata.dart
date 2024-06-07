
import 'package:efhamnidz/core/app_export.dart';
import 'package:flutter/material.dart';

class NoDataAvaiable extends StatelessWidget {
  const NoDataAvaiable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "There is no Data currently",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Image.asset(
            ImageConstant.imageNotFound,
            width: 450,
            height: 450,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}