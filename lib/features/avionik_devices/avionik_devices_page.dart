import 'package:flutter/material.dart';
import 'package:seminar_app/features/avionik_devices/avionik_devices_button.dart';

class AvionikDevicesPage extends StatelessWidget {
  const AvionikDevicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AvionikDevicesButton()],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [AvionikDevicesButton(), AvionikDevicesButton()],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [AvionikDevicesButton(), AvionikDevicesButton(), AvionikDevicesButton()],
        ),
      ],
    ));
  }
}
