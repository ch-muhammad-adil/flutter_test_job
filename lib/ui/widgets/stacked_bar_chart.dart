import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StackedBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  StackedBarChart(this.seriesList, {this.animate});

  /// Creates a stacked [BarChart] with sample data and no transition.
  factory StackedBarChart.withSampleData() {
    return new StackedBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      barGroupingType: charts.BarGroupingType.stacked,
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final tableSalesData = [
      new OrdinalSales('Mo.', 0),
      new OrdinalSales('Tue.', 45),
      new OrdinalSales('Wed.', 45),
      new OrdinalSales('Th.', 45),
      new OrdinalSales('Fr.', 50),
      new OrdinalSales('Sat.', 50),
      new OrdinalSales('Sun.', 50),
    ];

    final mobileSalesData = [
      new OrdinalSales('Mo.', 60),
      new OrdinalSales('Tue.', 15),
      new OrdinalSales('Wed.', 15),
      new OrdinalSales('Th.', 15),
      new OrdinalSales('Fr.', 10),
      new OrdinalSales('Sat.', 10),
      new OrdinalSales('Sun.', 10),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesData,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Mobile',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesData,
      ),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final double sales;

  OrdinalSales(this.year, this.sales);
}
