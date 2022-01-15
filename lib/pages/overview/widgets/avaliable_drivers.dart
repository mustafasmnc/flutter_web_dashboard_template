// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

/// Example without a datasource
class AvaliableDrivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            color: lightGrey.withOpacity(0.1),
            blurRadius: 12,
          )
        ],
        border: Border.all(color: lightGrey, width: 0.5),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: CustomText(
                  text: "Avaliable Drivers",
                  color: lightGrey,
                  weight: FontWeight.bold,
                ),
              )
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              headingRowColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.blueAccent.withOpacity(0.4)),
              columns: [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                  10,
                  (index) => DataRow(
                          color: MaterialStateProperty.resolveWith(
                              (states) => states.contains(MaterialState.hovered)
                                  ? Colors.blue
                                  : index % 2 == 0
                                      ? Colors.blueAccent.withOpacity(0.1)
                                      : Colors.blueAccent.withOpacity(0.2)),
                          cells: [
                            DataCell(CustomText(
                              text: "Mustafa",
                            )),
                            DataCell(CustomText(
                              text: "Turkey",
                            )),
                            DataCell(
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: 18,
                                  ),
                                  SizedBox(width: 5),
                                  CustomText(
                                    text: "4.$index",
                                  )
                                ],
                              ),
                            ),
                            DataCell(
                              Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: active, width: 0.5),
                                    color: light,
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                child: CustomText(
                                  text: "Avaliable Delivery",
                                  color: active.withOpacity(0.7),
                                  weight: FontWeight.bold,
                                ),
                              ),
                            )
                          ]))),
        ],
      ),
    );
  }
}
