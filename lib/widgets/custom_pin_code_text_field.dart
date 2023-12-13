import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexpdev_s_application1/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.margin,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: 4,
          keyboardType: TextInputType.number,
          textStyle: textStyle ?? theme.textTheme.headlineMedium,
          hintStyle: hintStyle ?? theme.textTheme.headlineMedium,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          enableActiveFill: true,
          pinTheme: PinTheme(
            fieldHeight: 52.h,
            fieldWidth: 52.h,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(10.h),
            inactiveFillColor: appTheme.gray200,
            activeFillColor: appTheme.gray200,
            selectedFillColor: appTheme.gray200,
            inactiveColor: Colors.transparent,
            activeColor: Colors.transparent,
            selectedColor: Colors.transparent,
          ),
          onChanged: (value) => onChanged(value),
          validator: validator,
        ),
      );
}
