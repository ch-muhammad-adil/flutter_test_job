import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:test_job/constants/data_constants.dart';
import 'package:test_job/constants/ui_constants.dart';
import 'package:test_job/ui/widgets/action_button.dart';
import 'package:test_job/ui/widgets/input_field_widget.dart';

class ExpenseTileBottomSheetWidget {
  ExpenseTileBottomSheetWidget.showSheet(BuildContext context) {
    addExpenseTap(context);
  }

  var date = 'Select Date'.toUpperCase();

  void addExpenseTap(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter myState) {
              return SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  height: ScreenUtil().setHeight(560),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Select date:',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(TextSize.size16px),
                                  color: colorTextLight)),
                          GestureDetector(
                            child: Text(date,
                                style: TextStyle(
                                    fontSize:
                                        ScreenUtil().setSp(TextSize.size16px),
                                    color: colorPrimary)),
                            onTap: () {
                              selectDate(context,
                                  selectedDate: (String selectedDate) {
                                print(selectedDate);
                                myState(() {
                                  date = selectedDate;
                                });
                              });
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(45),
                      ),
                      TextInputFieldWidget(
                        textFieldHint: 'Expense Title',
                        enabled: true,
                        autoCorrect: false,
                        onChange: (val) {},
                        onSubmitted: (val) {},
                        maxLength: 250,
                        autofocus: true,
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(45),
                      ),
                      TextInputFieldWidget(
                        textFieldHint: 'Amount',
                        enabled: true,
                        autoCorrect: false,
                        onChange: (val) {},
                        onSubmitted: (val) {},
                        textInputType: TextInputType.number,
                        autofocus: false,
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(45),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ActionButton(
                          'Add Expense'.toUpperCase(),
                          height: ScreenUtil().setHeight(90),
                          width: ScreenUtil().setWidth(250),
                          elevation: 2,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          textStyle: TextStyle(fontSize: ScreenUtil().setSp(30)),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        });
  }
}
