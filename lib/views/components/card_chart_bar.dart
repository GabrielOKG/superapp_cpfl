import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartOneState();
}

class BarChartOneState extends State<BarChartOne> {
  final List<double> data = [
    282,
    489,
    139,
    190,
    172,
    209,
    232,
    272,
    222,
    157,
    162,
    221
  ];
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BarChart(
        mainBarData(),
      ),
    );
  }

  BarChartGroupData _buildBar(
    int x,
    double y, {
    bool isTouched = false,
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: y,
          width: 10,
          colors: [
            (y == 489.0)
                ? Colors.red
                : (y == 139.0)
                    ? Colors.green
                    : (y == 221.0)
                        ? Colors.orange
                        : Colors.white
          ],
          backDrawRodData: BackgroundBarChartRodData(
            show: false,
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> _buildAllBars() {
    return List.generate(
      data.length,
      (index) =>
          _buildBar(index, data[index], isTouched: index == touchedIndex),
    );
  }

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: _buildBarTouchData(),
      titlesData: _buildAxes(),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: _buildAllBars(),
    );
  }

  FlTitlesData _buildAxes() {
    return FlTitlesData(
      // Build X axis.

      bottomTitles: SideTitles(
        showTitles: true,
        getTextStyles: (value) => const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
        margin: 5,
        getTitles: (double value) {
          switch (value.toInt()) {
            case 0:
              return ' J';
            case 1:
              return 'F';
            case 2:
              return 'M ';
            case 3:
              return 'A ';
            case 4:
              return 'M';
            case 5:
              return 'J ';
            case 6:
              return 'J';
            case 7:
              return 'A';
            case 8:
              return 'S';
            case 9:
              return 'O';
            case 10:
              return 'N';
            case 11:
              return 'D';

            default:
              return '';
          }
        },
      ),

      // Build Y axis.
      leftTitles: SideTitles(
        showTitles: false,
        getTitles: (double value) {
          return value.toString();
        },
      ),
    );
  }

  BarTouchData _buildBarTouchData() {
    return BarTouchData(
      touchTooltipData: BarTouchTooltipData(
        tooltipBgColor: Colors.blueGrey,
        getTooltipItem: (group, groupIndex, rod, rodIndex) {
          String weekDay;
          switch (group.x.toInt()) {
            case 0:
              weekDay = 'Janeiro';
              break;
            case 1:
              weekDay = 'Fevereiro';
              break;
            case 2:
              weekDay = 'Marco';
              break;
            case 3:
              weekDay = 'Abril';
              break;
            case 4:
              weekDay = 'Maio';
              break;
            case 5:
              weekDay = 'Junho';
              break;
            case 6:
              weekDay = 'Julho';
              break;
            case 7:
              weekDay = 'Agosto';
              break;
            case 8:
              weekDay = 'Setembro';
              break;
            case 9:
              weekDay = 'Outubro';
              break;
            case 10:
              weekDay = 'Novembro';
              break;
            case 11:
              weekDay = 'Dezembro';
              break;

              break;
          }
          return BarTooltipItem(
            weekDay + '\n' + (rod.y).toString(),
            TextStyle(color: Colors.white),
          );
        },
      ),
      touchCallback: (barTouchResponse) {
        setState(() {
          if (barTouchResponse.spot != null &&
              barTouchResponse.touchInput is! FlPanEnd &&
              barTouchResponse.touchInput is! FlLongPressEnd) {
            touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
          } else {
            touchedIndex = -1;
          }
        });
      },
    );
  }
}
