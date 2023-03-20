import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/container_cart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketCard({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              //blue part of the ticket
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF526799),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        const ThickContainer(),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      direction: Axis.horizontal,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                          (index) => const SizedBox(
                                                width: 3,
                                                height: 1,
                                                child: DecoratedBox(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white)),
                                              )));
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )),
                        const ThickContainer(),
                        const Spacer(),
                        Text(
                          ticket['to']['code'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    const Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          ticket['flying_time'],
                          textAlign: TextAlign.center,
                          style: Styles.headLineStyle3.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                        Text(
                          ticket['to']['name'],
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //orange part of the ticket
              Container(
                color: Styles.orangeColor,
                child: Row(children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => const SizedBox(
                                      height: 1,
                                      width: 5,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    )));
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ]),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Date',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Departure Time',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Number',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                    ],
                  )
                  // Column(
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Text('8th Jan',
                  //             style: Styles.headLineStyle3
                  //                 .copyWith(color: Colors.white)),
                  //         Text('08:00 AM',
                  //             textAlign: TextAlign.center,
                  //             style: Styles.headLineStyle2
                  //                 .copyWith(color: Colors.white)),
                  //         Text('23',
                  //             style: Styles.headLineStyle3
                  //                 .copyWith(color: Colors.white)),
                  //       ],
                  //     ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //
                  //         Text('Departure Time',
                  //             textAlign: TextAlign.center,
                  //             style: Styles.headLineStyle3
                  //                 .copyWith(color: Colors.white)),
                  //         Text('Number',
                  //             style: Styles.headLineStyle3
                  //                 .copyWith(color: Colors.white)),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  )
            ],
          )),
    );
  }
}
