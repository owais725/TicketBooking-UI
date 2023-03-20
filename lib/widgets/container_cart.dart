import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2.5, color: Colors.white)),
    );
  }
}

class ThinContainer extends StatelessWidget {
  const ThinContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2.5, color: const Color(0xFF8ACCF7))),
    );
  }
}
