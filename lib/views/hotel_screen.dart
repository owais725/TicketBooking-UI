import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('Price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(left: 17, top: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Styles.primaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 3,
                blurRadius: 12,
                offset: const Offset(1, 10))
          ]),
      width: size.width * 0.55,
      height: AppLayout.getHeight(330),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotel['image']}'))),
          ),
          const Gap(20),
          Text(hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(5),
          Text(hotel['destination'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text('\$${hotel['price']}/night',
              style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)),
        ],
      ),
    );
  }
}
