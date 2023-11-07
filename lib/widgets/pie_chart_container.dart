import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartContainer extends StatelessWidget {
  const PieChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Expense Structure',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.9,
              child: PieChart(
                PieChartData(sections: [
                  PieChartSectionData(
                    color: Colors.purple[100],
                    value: 40,
                    title: 'Food',
                  ),
                  PieChartSectionData(
                    color: Colors.purple[200],
                    value: 20,
                    title: 'Transportation',
                  ),
                  PieChartSectionData(
                    color: Colors.purple[300],
                    value: 25,
                    title: 'Online Shopping',
                  ),
                  PieChartSectionData(
                    color: Colors.purple[400],
                    value: 5,
                    title: 'Investment',
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
