import 'package:flutter/material.dart';

class ShowMoneyshareUI extends StatefulWidget {
  // สร้างตัวแปรรับค่าที่จะส่งมาแสดง
  double? money;
  int? person;
  double? tip;
  double? moneyshare;

  ShowMoneyshareUI({
    Key? key,
    this.money,
    this.person,
    this.tip,
    this.moneyshare,
  }) : super(key: key);

  @override
  _ShowMoneyshareUIState createState() => _ShowMoneyshareUIState();
}

class _ShowMoneyshareUIState extends State<ShowMoneyshareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7C7373),
      appBar: AppBar(
        title: Text(
          'ผลการแชร์เงิน',
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF58C519),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/images/logo_01.png',
                height: 150.0,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'จำนวนเงินที่จะหาร'
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.money.toString(),
                style: TextStyle(
                  color: Color(0xFF9BD318),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'บาท'
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'จำนวนคน'
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.person.toString(),
                style: TextStyle(
                  color: Color(0xFF9BD318),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'คน'
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'จำนวนเงินทิป'
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.tip.toString(),
                style: TextStyle(
                  color: Color(0xFF9BD318),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'บาท'
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'สรุปว่าหารกันคนละ'
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 60,
                color: Color(0xFF645E66),
                alignment: Alignment.center,
                child: Text(
                  widget.moneyshare.toString(),
                  style: TextStyle(
                    color: Color(0xFF9BD318),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'บาท'
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
