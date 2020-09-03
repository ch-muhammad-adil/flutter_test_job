import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:test_job/ui/widgets/expense_tile_bottom_sheet_widget.dart';
import 'package:test_job/ui/widgets/expense_tile_widget.dart';
import 'package:test_job/ui/widgets/stacked_bar_chart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var date = 'SELECT DATE';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            ExpenseTileBottomSheetWidget.showSheet(context);
          },
          child: Icon(Icons.add),
        ),
      ),
      appBar: AppBar(
        title: Text('Test Job'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
              height: ScreenUtil().setHeight(500),
              child: StackedBarChart.withSampleData()),
          SizedBox(
            height: ScreenUtil().setHeight(20),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ExpenseTileWidget();
                }),
          )
        ],
      ),
    );
  }
}
