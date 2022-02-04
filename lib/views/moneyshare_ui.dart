import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyShareUI extends StatefulWidget {
  const MoneyShareUI({Key? key}) : super(key: key);

  @override
  _MoneyShareUIState createState() => _MoneyShareUIState();
}

class _MoneyShareUIState extends State<MoneyShareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF797E88),
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
                    onChanged: (checked) {},
                    value: true,
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
                onPressed: () {},
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
                height: 25,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  'ยกเลิก',
                ),
                icon: Icon(
                  FontAwesomeIcons.sync,
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
            ],
          ),
        ),
      ),
    );
  }
}
