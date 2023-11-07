import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartContainer extends StatelessWidget {
  const PieChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.9,
      child: PieChart(
        PieChartData(sections: [
          PieChartSectionData(
            color: Colors.red,
            value: 40,
            title: 'Food',
          ),
          PieChartSectionData(
            color: Colors.grey,
            value: 20,
            title: 'Transportation',
          ),
          PieChartSectionData(
            color: Colors.blue,
            value: 25,
            title: 'Online Shopping',
          ),
          PieChartSectionData(
            color: Colors.yellow,
            value: 5,
            title: 'Investment',
          ),
        ]),
      ),
    );
  }
}
