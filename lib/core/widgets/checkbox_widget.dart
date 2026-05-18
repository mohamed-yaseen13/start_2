import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    super.key,
    required this.check,
    required this.onChange,
    this.padding,
    this.height,
    this.width,
  });

  final bool check;
  final EdgeInsets? padding;
  final void Function(bool val) onChange;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return InkWell(
      onTap: () => onChange(!check),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: check
                ? colors.primary
                : colors.onSurface.withValues(alpha: 0.3),
            width: 1.5.w,
          ),
        ),
        child: Container(
          width: width ?? 24.w,
          height: height ?? 24.w,
          decoration: BoxDecoration(
            color: check ? colors.primary : Colors.white,
            borderRadius: BorderRadius.circular(check ? 6.r : 10.r),
          ),
          child: check
              ? Icon(Icons.done, size: 24.sp, color: colors.onPrimary)
              : null,
        ),
      ),
    );
  }
}
