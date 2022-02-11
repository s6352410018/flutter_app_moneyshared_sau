import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app_moneyshared_sau/views/show_moneyshare_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyShareUI extends StatefulWidget {
  const MoneyShareUI({Key? key}) : super(key: key);

  @override
  _MoneyShareUIState createState() => _MoneyShareUIState();
}

class _MoneyShareUIState extends State<MoneyShareUI> {
  bool? check_tip = false;

  TextEditingController money_ctrl = TextEditingController();
  TextEditingController person_ctrl = TextEditingController();
  TextEditingController tip_ctrl = TextEditingController();
  //เมธอด -> โค้ดแสดง Dialog เตือน โดยจะรับข้อความมาแสดงที่ Dialog
  showWarningDialog(context, msg) {
//เรียกใช้งานฟังก์ชัน showDialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Colors.deepPurple,
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          content: Text(
            msg,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ตกลง',
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xFF7C7373),
        appBar: AppBar(
          title: Text(
            'แชร์เงินกันเตอะ',
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF58C519),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Image.asset(
                  'assets/images/logo_01.png',
                  height: 150.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                    top: 30.0,
                  ),
                  child: TextField(
                    controller: money_ctrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'ป้อนจำนวนเงินบาท',
                      hintStyle: TextStyle(
                        color: Color(0xFF494C50),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.moneyBillWave,
                        color: Color(0xFF58C519),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58C519),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58C519),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                    top: 20.0,
                  ),
                  child: TextField(
                    controller: person_ctrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'ป้อนจำนวนคน',
                      hintStyle: TextStyle(
                        color: Color(0xFF494C50),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF58C519),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58C519),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58C519),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      onChanged: (checked) {
                        setState(() {
                          check_tip = checked;
                          if (checked == false) {
                            tip_ctrl.text = '';
                          }
                        });
                      },
                      value: check_tip,
                      activeColor: Color(0xFF1D8FD1),
                      side: BorderSide(color: Color(0xFF1CC44E)),
                    ),
                    Text(
                      'ทิปให้พนักงานเสริฟ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                    top: 30.0,
                  ),
                  child: TextField(
                    enabled: check_tip,
                    controller: tip_ctrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'ป้อนจำนวนเงินทิป(บาท)',
                      hintStyle: TextStyle(
                        color: Color(0xFF494C50),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.coins,
                        color: Color(0xFF58C519),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58C519),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF58C519),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ตัวแปรที่จะต้องมาเก็บผลลัพท์ที่ได้จากการคำนวณ
                    double? moneyshare = 0;
                    // ตรวจสอบและคำนวณ
                    if (money_ctrl.text.isEmpty) {
                      showWarningDialog(context, 'ป้อนจำนวนเงินด้วยครับ...^_^');
                      return;
                    } else if (person_ctrl.text.length == 0) {
                      showWarningDialog(context, 'ป้อนจำนวนคนด้วยครับ...^_^');
                      return;
                    } else if (check_tip == false) {
                      // คำนวณแบบไม่มี Tip
                      double? money = double.parse(money_ctrl.text);
                      int? person = int.parse(person_ctrl.text);
                      moneyshare = money / person;
                    } else {
                      // ตรวจสอบว่าป้อน Tip หรือยัง
                      if (tip_ctrl.text.isEmpty) {
                        showWarningDialog(context, 'ป้อน Tip ด้วยครับ...^_^');
                        return;
                      } else {
                        // คำนวณแบบมี Tip
                        double? money = double.parse(money_ctrl.text);
                        int? person = int.parse(person_ctrl.text);
                        double? tip = double.parse(tip_ctrl.text);
                        moneyshare = (money + tip) / person;
                      }
                    }
                    // ส่งข้อมูลไปแสดงอีกหน้า
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowMoneyshareUI(
                          money: double.parse(money_ctrl.text),
                          person: int.parse(person_ctrl.text),
                          tip: double.parse(
                              tip_ctrl.text.isEmpty ? '0' : tip_ctrl.text),
                          moneyshare: moneyshare,
                        ),
                      ),
                    );
                  },
                  child: Text('คำนวณ'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        // *************************
                        MediaQuery.of(context).size.width - 80,
                        50.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: Color(0xFF40A48E)),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // กำหนดค่าช่องป้อนทุกตัวให้ว่าง
                    setState(() {
                      money_ctrl.text = '';
                      person_ctrl.text = '';
                      tip_ctrl.text = '';

                      check_tip = false;
                    });
                  },
                  label: Text(
                    'ยกเลิก',
                  ),
                  icon: Icon(
                    Icons.refresh,
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        // *************************
                        MediaQuery.of(context).size.width - 80,
                        50.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: Color(0xFF1CBB64)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Created by Kantz SAU',
                  style: TextStyle(color: Color(0xFFD47924)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
