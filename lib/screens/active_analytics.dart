import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '/widgets/legend_widgets.dart';

class BarChartSample6 extends StatelessWidget {
  const BarChartSample6({super.key});

  final morningColor = Colors.purpleAccent;
  final afternoonColor = Colors.cyan;
  final eveningColor = Colors.blue;
  final betweenSpace = 0.2;

  BarChartGroupData generateGroupData(
    int x, double morning, double afternoon, double night,) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: morning,
          color: morningColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: morning + betweenSpace,
          toY: morning + betweenSpace + afternoon,
          color: eveningColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: morning + betweenSpace + afternoon + betweenSpace,
          toY: morning + betweenSpace + afternoon + betweenSpace + night,
          color: afternoonColor,
          width: 5,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'SUN';
        break;
      case 1:
        text = 'MON';
        break;
      case 2:
        text = 'TUE';
        break;
      case 3:
        text = 'WED';
        break;
      case 4:
        text = 'THU';
        break;
      case 5:
        text = 'FRI';
        break;
      case 6:
        text = 'SAT';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 0), // Symmetrical padding for left and right
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white, // Set the background color here
            ),
            child: Column(
              // Expand the column to the full height of the screen
              mainAxisSize: MainAxisSize.max,
              // Center the children vertically
              mainAxisAlignment: MainAxisAlignment.center,
              // Align children to the start of the cross axis
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Activity',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 24), // Add left padding to the legends
                  child: LegendListWidget(
                    legends: [
                      Legend(name: 'Morning', color: morningColor),
                      Legend(name: 'Afternoon', color: eveningColor),
                      Legend(name: 'Evening', color: afternoonColor),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Center(
                  // Center the AspectRatio itself
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceEvenly, // Keep as spaceEvenly
                        titlesData: FlTitlesData(
                          leftTitles: const AxisTitles(),
                          rightTitles: const AxisTitles(),
                          topTitles: const AxisTitles(),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: bottomTitles,
                              reservedSize: 20,
                            ),
                          ),
                        ),
                        barTouchData: BarTouchData(enabled: false),
                        borderData: FlBorderData(show: false),
                        gridData: const FlGridData(show: false),
                        barGroups: [
                          generateGroupData(0, 2, 3, 2),
                          generateGroupData(1, 2, 5, 1.7),
                          generateGroupData(2, 1.3, 3.1, 2.8),
                          generateGroupData(3, 3.1, 4, 3.1),
                          generateGroupData(4, 0.8, 3.3, 3.4),
                          generateGroupData(5, 2, 5.6, 1.8),
                          generateGroupData(6, 1.3, 3.2, 2),
                          // ... Add other group data
                        ],
                        maxY: 11 + (betweenSpace * 3), // Maximum Y value
                        extraLinesData: ExtraLinesData(
                          horizontalLines: [
                            HorizontalLine(
                              y: 3.3,
                              color: morningColor,
                              strokeWidth: 1,
                              dashArray: [20, 4],
                            ),
                            HorizontalLine(
                              y: 8,
                              color: eveningColor,
                              strokeWidth: 1,
                              dashArray: [20, 4],
                            ),
                            HorizontalLine(
                              y: 11,
                              color: afternoonColor,
                              strokeWidth: 1,
                              dashArray: [20, 4],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}