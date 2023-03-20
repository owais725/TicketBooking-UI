import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TextContRow extends StatelessWidget {
  final String firstTab, secondTab;

  const TextContRow({Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50)))),
            child: Center(
                child: Text(
              firstTab,
              style: Styles.textStyle,
            )),
          ),
          Container(
            width: size.width * 0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50)))),
            child: Center(
                child: Text(
              secondTab,
              style: Styles.textStyle,
            )),
          )
        ],
      ),
    );
  }
}
