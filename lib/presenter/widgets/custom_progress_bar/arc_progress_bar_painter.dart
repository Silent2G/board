import 'package:board_pro/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ArcProgressBarPainter extends CustomPainter {
  final double percentage;
  final double strokeWidth;
  final Color foregroundColor;

  ArcProgressBarPainter({
    @required this.foregroundColor,
    @required this.percentage,
    double strokeWidth,
  }) : this.strokeWidth = strokeWidth ?? 15;

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = size.center(Offset.zero);
    final Size constrainedSize =
        size - Offset(this.strokeWidth, this.strokeWidth);
    final shortestSide =
        Math.min(constrainedSize.width, constrainedSize.height);
    final foregroundPaint = Paint()
      ..color = this.foregroundColor
      ..strokeWidth = this.strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final radius = (shortestSide / 2);

    // Start at the top. 0 radians represents the right edge
    final double startAngle = (2 * Math.pi * 0.325);
    final double sweepAngle = (2 * Math.pi * ((this.percentage * 0.85) ?? 0));

    final backgroundPaint = Paint()
      ..strokeWidth = this.strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..shader = LinearGradient(
        colors: [AppColors.GREEN, AppColors.YELLOW, AppColors.RED],

        // startAngle: startAngle,
        // endAngle: 2 * Math.pi * 0.925,
        // tileMode: TileMode.clamp,
      ).createShader(Rect.fromCircle(center: center, radius: radius));

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      (2 * Math.pi * 0.85),
      false,
      foregroundPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      backgroundPaint,
    );
  }

  Offset createCircleOffset(double dx, double dy) {
    return new Offset(dx, dy);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
    // final oldPainter = (oldDelegate as ArcProgressBarPainter);
    // return oldPainter.percentage != this.percentage ||
    //     oldPainter.foregroundColor != this.foregroundColor ||
    //     oldPainter.strokeWidth != this.strokeWidth;
  }
}
