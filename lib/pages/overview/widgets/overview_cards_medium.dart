import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in progress",
              value: "7",
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: "Packages delivered",
              value: "12",
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
            SizedBox(width: _width / 64),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            InfoCard(
              title: "Cancelled delivery",
              value: "3",
              onTap: () {},
              topColor: Colors.redAccent,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: "Scheduled deliveries",
              value: "4",
              onTap: () {},
            ),
            SizedBox(width: _width / 64),
          ],
        )
      ],
    );
  }
}
