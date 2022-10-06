import 'package:book_tickets/screen/ticket_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Flutter", style: Styles.headLineStyle3,),
                            Gap(AppLayout.getHeight(5)),
                            Text("Passenger", style: Styles.headLineStyle3,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}