import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.only(right: 10),
      child: Container(
        
        width: Get.width - 50,
        child: Text(
          maxLines: 4,
          overflow: TextOverflow.visible,
          text,
          style: theme.textTheme.headlineMedium!.copyWith(
            color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          ),
        ),
      ),
    );
  }
}
