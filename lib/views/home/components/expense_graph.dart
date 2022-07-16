import 'package:digital_wallet_app/consts/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/data.dart';
import '../../../util/logic_helper.dart';

class ExpenseGraphDesign extends StatelessWidget {
  final String month;

  const ExpenseGraphDesign({
    Key? key,
    required this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,
          backgroundColor: AppColors.black,
          lineBarsData: [
            LineChartBarData(
              spots: spots[getMonthNumber(month) - 1],
              isCurved: true,
              gradient: const LinearGradient(colors: [
                AppColors.purple,
                AppColors.pink,
              ]),
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(colors: [
                  AppColors.purple.withOpacity(0.2),
                  AppColors.pink.withOpacity(0.2),
                ]),
              ),
              dotData: FlDotData(show: false),
            ),
          ],
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: false,
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: AppColors.grey500,
                strokeWidth: 0.8,
              );
            },
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 12,
                  getTitlesWidget: (value, meta) {
                    String text = '';
                    switch (value.toInt()) {
                      case 1:
                        text = '1';
                        break;
                      case 2:
                        text = '2';
                        break;
                      case 3:
                        text = '3';
                        break;
                      case 4:
                        text = '4';
                        break;
                      case 5:
                        text = '5';
                        break;
                      case 6:
                        text = '6';
                        break;
                      case 7:
                        text = '7';
                        break;
                      case 8:
                        text = '8';
                        break;
                      case 9:
                        text = '9';
                        break;
                      case 10:
                        text = '10';
                        break;

                      default:
                        return Container();
                    }
                    return Text(
                      text,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 10,
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
