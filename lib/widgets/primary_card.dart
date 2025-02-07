import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../utils/utils.dart';

class PrimaryCard extends ConsumerWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Color? color;
  const PrimaryCard(
      {super.key, required this.child, this.padding, this.onTap, this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: color ?? Colors.greenAccent.withValues(alpha: 0.09),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Colors.black.withValues(alpha: 0.07),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    ).pOnly(bottom: 4);
  }
}
