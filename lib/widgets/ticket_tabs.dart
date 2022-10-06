import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
                width: AppLayout.getWidth(160),
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.white),
                child: Center(
                  child: Text(firstTab),
                )),
            Container(
                width: AppLayout.getWidth(180),
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.grey.shade100),
                child: Center(
                  child: Text(secondTab),
                )),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: Colors.white),
      ),
    );
  }
}
