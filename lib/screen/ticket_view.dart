import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.9,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF526799),
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(21))),
                padding:  EdgeInsets.all(AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(ticket['from']['code'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            const Gap(5),
                            Text(ticket['from']['name'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Center(
                                  child: Row(children: [
                                    Transform.rotate(
                                        angle: 1.5,
                                        child: Icon(
                                          Icons.local_airport_rounded,
                                          color: Colors.white,
                                        )),
                                  ],),
                                ),
                              ],
                            ),
                            const Gap(5),
                            Text(ticket['flying_time'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(ticket['to']['code'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            const Gap(5),
                            Text(ticket['to']['name'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                   SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(ticket['date'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("Date",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("Deprature time",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(),
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("Number",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
