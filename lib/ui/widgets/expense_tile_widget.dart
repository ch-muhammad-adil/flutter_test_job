import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:test_job/constants/ui_constants.dart';

class ExpenseTileWidget extends StatefulWidget {
  ExpenseTileWidget();

  @override
  _ExpenseTileWidgetState createState() => _ExpenseTileWidgetState();
}

class _ExpenseTileWidgetState extends State<ExpenseTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        '\$',
        style: TextStyle(fontSize: ScreenUtil().setSp(40)),
      ),
      trailing: Text('\$10',
          style: TextStyle(
              fontSize: ScreenUtil().setSp(30), color: colorTextLight)),
      title: Row(
        children: [
          Text('Expense Title',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(30), color: colorTextLight)),
          SizedBox(
            width: ScreenUtil().setWidth(30),
          ),
          Center(
              child: Text('08.31.2020',
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(25), color: colorTextLight)))
        ],
      ),
    );
  }
}
