import 'package:efhamnidz/presentation/text_to_sign_screen/controller/text_to_sign_controller.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomSearchView extends GetView<TextToSignController> {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.txtcontroller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? scrollPadding;

  final TextEditingController? txtcontroller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          scrollPadding: EdgeInsets.only(
              bottom: MediaQuery.of(Get.context!).viewInsets.bottom),
          controller: txtcontroller,
          style: textStyle ??
              CustomTextStyles.titleLargeOnSecondaryContainerRegular,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: (String value) {
            onChanged?.call(value);
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle:
            hintStyle ?? CustomTextStyles.titleLargeOnSecondaryContainerRegular,
        suffixIcon: GetBuilder<TextToSignController>(
          builder: (controller) {
            return suffix ??
                Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
                  child: InkWell(
                    onTap: () {
                      controller.initPlayer();
                    },
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                  ),
                );
          },
        ),
        suffixIconConstraints: suffixConstraints ??
            BoxConstraints(
              maxHeight: 47.v,
            ),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              left: 11.h,
              top: 11.v,
              bottom: 11.v,
            ),
        fillColor: fillColor ?? theme.colorScheme.errorContainer,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.h),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.h),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.h),
              borderSide: BorderSide.none,
            ),
      );
}
