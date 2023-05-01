import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Column 1'),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Column 2'),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Column 2'),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Column 2'),
        ),
      ],
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Table(
              // defaultColumnWidth: const FixedColumnWidth(85.0),
              columnWidths: const <int, FixedColumnWidth>{
                0: FixedColumnWidth(60.0),
                1: FixedColumnWidth(90.0),
              },
              border: TableBorder.all(
                width: 1.0,
              ),
              children: [
                _tableRow,
                _tableRow,
                _tableRow,
                _tableRow,
              ],
            ),
            SecondWayOfTable(),
          ],
        ),
      ),
    );
  }
}

class SecondWayOfTable extends StatelessWidget {
  const SecondWayOfTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(14.0),
      width: double.infinity,
      height: 200,
      child: Table(
        columnWidths: const <int, FixedColumnWidth>{
          0: FixedColumnWidth(55.0),
          1: FixedColumnWidth(180.0),
        },
        border: TableBorder.all(
          width: 2.0,
        ),
        children: [
          TableRow(
            children: [
              tableCol(
                context: context,
                colData: 'No.',
                fontSize: 22.0,
                isFontBold: true,
              ),
              tableCol(
                context: context,
                colData: 'Email',
                fontSize: 22.0,
                isFontBold: true,
              ),
              tableCol(
                context: context,
                colData: 'Password',
                fontSize: 22.0,
                isFontBold: true,
              ),
            ],
          ),
          TableRow(
            children: [
              tableCol(
                context: context,
                colData: '1',
                fontSize: 20.0,
                isFontBold: false,
              ),
              tableCol(
                context: context,
                colData: 'kshittizChaudhary@gmail.com',
                fontSize: 20.0,
                isFontBold: false,
              ),
              tableCol(
                context: context,
                colData: 'Kc123',
                fontSize: 20.0,
                isFontBold: false,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tableCol({
    required BuildContext context,
    required String colData,
    required double fontSize,
    required bool isFontBold,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            colData,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight:
                  isFontBold == true ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
