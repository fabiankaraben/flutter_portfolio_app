import 'dart:math' as math;

import 'package:flutter/material.dart';

/// This [CircleChart] chart widget kind of StatefulWidget widget that create
/// animated circle chart.
class CircleChart extends StatefulWidget {
  /// The [CirclePainter] constructor has two required parameters that are
  /// [progressNumber] and [maxNumber].
  /// Also have some default parameter and optional parameters.
  const CircleChart({
    super.key,
    required this.progressNumber,
    required this.maxNumber,
    this.animationDuration = const Duration(milliseconds: 1500),
    this.backgroundColor,
    this.progressColor,
    this.width = 128,
    this.height = 128,
  }) : assert(
          progressNumber > 0 && maxNumber > 0 && progressNumber < maxNumber,
          'progressNumber must be greater than 0 and '
          'maxNumber must be greater than 0 and '
          'progressNumber must be greater than maxNumber',
        );

  ///
  final double progressNumber;

  ///
  final int maxNumber;

  ///
  final double width;

  ///
  final double height;

  ///
  final Duration animationDuration;

  ///
  final Color? progressColor;

  ///
  final Color? backgroundColor;

  @override
  State<StatefulWidget> createState() => CircleChartState();
}

/// This [CircleChartState] class k'nd of class that handle animation and
/// state of [CircleChart] widget.
class CircleChartState extends State<CircleChart>
    with SingleTickerProviderStateMixin {
  CirclePainter? _painter;
  late Animation<double> _animation;
  late AnimationController _controller;
  double _fraction = 0;

  /// Animation controller and animation initialized in this
  /// method called [initState]
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(
        () {
          setState(
            () {
              _fraction = _animation.value;
            },
          );
        },
      );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// [CirclePainter] object created here for using as painter.
    _painter = CirclePainter(
      animation: _controller,
      fraction: _fraction,
      progressNumber: widget.progressNumber,
      maxNumber: widget.maxNumber,
      backgroundColor: widget.backgroundColor,
      progressColor: widget.progressColor,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: widget.width - 10, // -10 ???
          height: widget.height,
          child: AspectRatio(
            aspectRatio: 1,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return CustomPaint(painter: _painter);
              },
            ),
          ),
        ),
      ],
    );
  }
}

/// A class that extends the [CustomPainter] to paint the requested circle
/// First two define the  animated value and up value. Other ones for
/// controlling the animation moves.
/// Also this class has [backgroundColor] and [progressColor] to control
/// these colors.
class CirclePainter extends CustomPainter {
  /// The [CirclePainter] constructor has four required parameters that
  /// are [progressNumber], [maxNumber], [fraction] and [animation].
  CirclePainter({
    required this.progressNumber,
    required this.maxNumber,
    required this.fraction,
    required this.animation,
    this.backgroundColor,
    this.progressColor,
  }) {
    _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
  }

  ///
  final Color? progressColor;

  ///
  final Color? backgroundColor;

  ///
  final double progressNumber;

  ///
  final int maxNumber;

  ///
  final double fraction;

  ///
  final Animation<double> animation;

  late Paint _paint;

  /// The [paint] method is called whenever the custom object needs
  /// to be repainted.
  /// This method make actual painting according to given values.
  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = backgroundColor ?? Colors.black12;
    canvas.drawArc(
      Offset.zero & size,
      -math.pi * 1.5 + math.pi / 4,
      (3 * math.pi) / 2,
      false,
      _paint,
    );

    _paint.color = progressColor ?? Colors.blue;

    final progressRadians =
        (progressNumber / maxNumber) * (3 * math.pi / 2) * (-animation.value);
    const startAngle = -math.pi * 1.5 + math.pi / 4;

    canvas.drawArc(
      Offset.zero & size,
      startAngle,
      -progressRadians,
      false,
      _paint,
    );
  }

  /// The [shouldRepaint] method is called when a new instance of the class
  /// is provided, to check if the new instance actually represents different
  /// information.
  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate.fraction != fraction;
  }
}
