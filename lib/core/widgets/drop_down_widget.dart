import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';
import '../dialog/drop_down_dialog.dart';
import '../models/drop_down_class.dart';

class DropDownWidget extends StatefulWidget {
  final DropDownClass dropDownClass;
  final double? width, borderRadius;
  final Color? borderColor, color;
  final double? padding;
  final void Function()? onTap, beforeTap;

  const DropDownWidget({
    required this.dropDownClass,
    this.width,
    super.key,
    this.onTap,
    this.borderRadius,
    this.borderColor,
    this.padding,
    this.color,
    this.beforeTap,
  });

  @override
  State<DropDownWidget> createState() => DropDownWidgetState();
}

class DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
            if (widget.onTap != null) {
              widget.onTap!();
            } else {
              widget.beforeTap?.call();
              showDropDownDialog(
                widget.dropDownClass,
              ).then((_) => setState(() {}));
            }
          },
          child: Container(
            height: 35.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 50.r),
              color: colors.tertiary.withValues(alpha: 0.2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: .03.sw,
                vertical: widget.padding ?? .007.sh,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.dropDownClass.displayedWidget() ?? const SizedBox(),
                  if (widget.dropDownClass.displayedWidget() != null)
                    SizedBox(width: .03.sw),
                  Text(
                    widget.dropDownClass.displayedName(),
                    maxLines: 1,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colors.onSurface,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: colors.secondary,
                    size: Constants.isTablet ? 60.sp : 16.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
