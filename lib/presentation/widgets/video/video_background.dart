import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  final List<Color> color;
  const VideoBackground(
      {super.key, this.color = const [Colors.transparent, Colors.black87]});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: color,
            stops: const [0.8, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
    ));
  }
}
