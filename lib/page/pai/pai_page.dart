import 'package:bazi/extention/theme/extention_theme.dart';
import 'package:bazi/http/api.dart';
import 'package:bazi/model/destiny_predict.dart';
import 'package:bazi/page/pai/pai_tab_page.dart';
import 'package:bazi/util/date_help.dart';
import 'package:bazi/widget/AppBarBuilder.dart';
import 'package:flutter/material.dart';
import 'package:bazi/enum/Gender.dart';
import 'package:bazi/enum/Calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_pickers/pickers.dart';

import 'package:flutter_pickers/time_picker/model/date_mode.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class PaiPage extends StatefulWidget {
  @override
  _PaiPageState createState() => _PaiPageState();
}

class _PaiPageState extends State<PaiPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController(text: '测试1');
  var _gender = Gender.man.value;
  var _calendar = Calendar.solar.value;
  var _birthday = '1990-01-01 00:00';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder.build(context, '排盘'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: '姓名'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '请输入姓名';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("性别"),
                    Spacer(),
                    Text(Gender.man.text),
                    Radio(
                      // 按钮的值
                      value: Gender.man.value,
                      // 改变事件
                      onChanged: (value) {
                        setState(() {
                          this._gender = value!;
                        });
                      },
                      // 按钮组的值
                      groupValue: this._gender,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("女"),
                    Radio(
                      value: Gender.women.value,
                      onChanged: (value) {
                        setState(() {
                          this._gender = value!;
                        });
                      },
                      groupValue: this._gender,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("历法"),
                    Spacer(),
                    Text(Calendar.solar.text),
                    Radio(
                      // 按钮的值
                      value: Calendar.solar.value,
                      // 改变事件
                      onChanged: (value) {
                        setState(() {
                          this._calendar = value!;
                        });
                      },
                      // 按钮组的值
                      groupValue: this._calendar,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(Calendar.lunar.text),
                    Radio(
                      value: Calendar.lunar.value,
                      onChanged: (value) {
                        setState(() {
                          this._calendar = value!;
                        });
                      },
                      groupValue: this._calendar,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Pickers.showDatePicker(
                      context,
                      mode: DateMode.YMDHM,
                      selectDate: DateHelp.toYMDHMPDuration(_birthday),
                      // pickerStyle: pickerStyle,
                      onConfirm: (p) {
                        if (p.year != null &&
                            p.month != null &&
                            p.day != null &&
                            p.hour != null &&
                            p.minute != null) {
                          setState(() {
                            var numFormat = NumberFormat('00');
                            _birthday =
                                '${p.year}-${numFormat.format(p.month)}-${numFormat.format(p.day)} ${numFormat.format(p.hour)}:${numFormat.format(p.minute)}';
                          });
                        } else {
                          print('------------------> $p');
                        }
                      },
                      // onChanged: (p) => print(p),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('出生日期'),
                      Spacer(),
                      Text(_birthday),
                      SvgPicture.asset(
                        'images/arrow-right.svg',
                        height: 20,
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // 表单验证通过，可以在此处处理提交逻辑
                      String username = _nameController.text;

                      // 处理提交逻辑...
                      var postData = {
                        'isSolarTime': false,
                        'calendarType': _calendar,
                        'birthday': _birthday,
                        "gender": _gender,
                        'username': username
                      };

                      SmartDialog.showLoading(msg: '测算中....');
                      Api.destinyPredict(postData).then((result) {
                        SmartDialog.dismiss();
                        if (!result.success()) {
                          SmartDialog.showToast(result.message);
                          return;
                        }
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (content) {
                          return PaiTabPage(
                            title: username,
                            destinyPredict: result.data,
                          );
                        }));
                      });
                    }
                  },
                  child: Text('提交'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
