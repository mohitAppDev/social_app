import 'package:flutter/material.dart';
import '../constants/constants.dart';

class ReusableTextField extends StatelessWidget {
  final TextInputType ?keyboardType;
  final String ?label;
  final String ?hintText;
  final IconData ?iconData;
  final bool readOnly;
  final int ?noOfLine;
  final TextEditingController ?controller;
  final FocusNode ?currentFocus;
  final FocusNode ?nextFocus;
  final bool isLastFocus;
  final TextInputType ?textInputType;
  final bool isObscureText;
  final String ?errorText;
  final bool isErrorAutoHide;
  final String ?suffixIconMsg;
  final Function() ?onTap;
  final TextCapitalization textCapitalization;
  final bool isDialogField;
  const ReusableTextField({
    super.key,
    @required this.keyboardType,
    @required this.label,
    @required this.hintText,
    @required this.iconData,
    required this.readOnly,
    @required this.noOfLine,
    @required this.controller,
    @required this.currentFocus,
    @required this.nextFocus,
    required this.isLastFocus,
    @required this.textInputType,
    required this.isObscureText,
    @required this.errorText,
    required this.isErrorAutoHide,
    @required this.suffixIconMsg,
    @required this.onTap,
    required this.textCapitalization,
    required this.isDialogField
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        readOnly: readOnly,
        maxLines: noOfLine,
        obscureText: isObscureText,
        decoration: InputDecoration(
          filled: true,
          suffixIcon: suffixIconMsg != null
              ? _suffixIcon()
              : const SizedBox(width: 0, height: 0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: isDialogField ? const Color(0xFF000000)
                  : const Color(0xFFFFFFFF),
              style: BorderStyle.solid,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          errorMaxLines: 1,
          errorText: errorText,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: !isErrorAutoHide ? const Color(0xFFFF2852) :
              isDialogField ? const Color(0xFF000000)
                  : const Color(0xFFFFFFFF),
              style: BorderStyle.solid,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: isErrorAutoHide || !isErrorAutoHide ? const Color(0xFFFF2852) :
              isDialogField ? const Color(0xFF000000)
                  : const Color(0xFFFFFFFF),
              style: BorderStyle.solid,
              width: 2,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusColor: isDialogField ? AppColors.ThemeColor[AppColors.ColorPrimary] : Colors.white,
          fillColor: Colors.white,
          hintText: hintText,
          contentPadding: const EdgeInsets.all(16),
          hintStyle: TextStyle(
            fontFamily: FontConst.myriadPro,
            color: AppColors.ThemeColor[AppColors.ColorHintText],
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        style: TextStyle(
          fontFamily: FontConst.centuryGothic,
          color: AppColors.ThemeColor[AppColors.ColorPrimary],
          fontSize: 16,
        ),
        textCapitalization: textCapitalization,
        textInputAction: isLastFocus ? TextInputAction.done : TextInputAction.next,
        focusNode: currentFocus,
        onFieldSubmitted: (term) {
          currentFocus?.unfocus();
          if (!isLastFocus) FocusScope.of(context).requestFocus(nextFocus);
        },
        onTap: onTap,
      ),
    );
  }

  Widget _suffixIcon() {
    return Tooltip(
      decoration: BoxDecoration(
        color: errorText != null ? AppColors.ThemeColor[AppColors.ColorOffer] : AppColors.ThemeColor[AppColors.ColorRare],
        shape: BoxShape.rectangle,
      ),
      textStyle: const TextStyle(
        fontFamily: FontConst.centuryGothic,
        color: Colors.white,
        fontSize: 16,
      ),
      margin: const EdgeInsets.only(left: 40, right: 40),
      message: suffixIconMsg ?? "",
      child: Icon(
        Icons.info_outline,
        color: (errorText != null ? AppColors.ThemeColor[AppColors.ColorOffer] : AppColors.ThemeColor[AppColors.ColorRare]),
      ),
    );
  }
}