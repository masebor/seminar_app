import 'package:flutter/material.dart';
import 'package:seminar_app/features/avionik_devices/avionik_devices_button.dart';

class AvionikDevicesSliderAnimation extends StatefulWidget {
  const AvionikDevicesSliderAnimation({super.key});

  @override
  State<AvionikDevicesSliderAnimation> createState() => _AvionikDevicesSliderAnimationState();
}

class _AvionikDevicesSliderAnimationState extends State<AvionikDevicesSliderAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _animationOffset = Tween<Offset>(begin: Offset.zero, end: const Offset(0, 1.5)).animate(CurvedAnimation(
    parent: _animationController,    
    curve: Curves.easeInCubic,
  ));

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animationOffset,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [AvionikDevicesButton(), AvionikDevicesButton(), AvionikDevicesButton(), AvionikDevicesButton()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [AvionikDevicesButton(), AvionikDevicesButton()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AvionikDevicesButton()],
          ),
        ],
      ),
    );
  }
}
