import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart' as core;

class SolidInput extends StatefulWidget {
  const SolidInput(
      {Key? key,
      this.iconName,
      this.label,
      this.hintText,
      this.obsecureText = false,
      this.controller,
      this.focusNode,
      this.onChanged,
      this.width})
      : super(key: key);
  final String? iconName;
  final String? label;
  final String? hintText;
  final bool? obsecureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final double? width;

  @override
  State<SolidInput> createState() => _SolidInputState();
}

class _SolidInputState extends State<SolidInput> {
  core.InputState inputState = core.InputState.Default;
  @override
  Widget build(BuildContext context) {
    Color borderColor = inputState == core.InputState.Default
        ? core.bgSecondary(context)
        : inputState == core.InputState.Focus
            ? core.AppColors.primary
            : inputState == core.InputState.Error
                ? core.AppColors.error
                : core.AppColors.success;
    Color iconColor = inputState == core.InputState.Default
        ? core.textSecondary
        : inputState == core.InputState.Focus
            ? core.AppColors.primary
            : inputState == core.InputState.Error
                ? core.AppColors.error
                : core.AppColors.success;

    return Container(
      width: widget.width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: core.w20(context)),
                  child: Text(
                    widget.label!,
                    style: core.label(context, core.AppColors.primary),
                  ),
                ),
                SizedBox(height: core.hh(context, 5)),
              ],
            ),
          Container(
            width: double.infinity,
            height: core.hh(context, 40),
            padding: EdgeInsets.only(
              left: core.w20(context),
              right: core.ww(context, 10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Focus(
                    onFocusChange: (val) {
                      setState(() {
                        inputState = val
                            ? core.InputState.Focus
                            : core.InputState.Default;
                      });
                    },
                    child: TextField(
                      controller: widget.controller,
                      focusNode: widget.focusNode,
                      cursorColor: core.AppColors.primary,
                      obscureText: widget.obsecureText!,
                      style: core.input(context, core.textPrimary(context)),
                      onChanged: widget.onChanged,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 7),
                        hintText: widget.hintText,
                        hintStyle: core.input(context, core.textSecondary),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                if (widget.iconName != null)
                  SvgPicture.asset(
                    widget.iconName!.toIcon,
                    color: iconColor,
                  ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(core.hh(context, 40)),
              color: core.bgSecondary(context),
              border: Border.all(
                color: borderColor,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
