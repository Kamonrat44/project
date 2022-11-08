import 'package:bmi/page/BMI_page.dart';
import 'package:flutter/material.dart';

class DataBMI extends StatefulWidget {
  const DataBMI({Key? key}) : super(key: key);

  @override
  State<DataBMI> createState() => _DataBMIState();
}

class _DataBMIState extends State<DataBMI> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/health.png"),
              // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
          appBar: AppBar(
            title: const Text('เกณฑ์ค่าดัชนีมวนกาย BMI'),
          ),
          body: Container(
            alignment: FractionalOffset.center,
            padding: const EdgeInsets.all(75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '      การหาค่าดัชนีมวลกาย (Body Mass Index : BMI) คือเป็นมาตรการที่ใช้ประเมินภาวะอ้วนและผอมในผู้ใหญ่ ตั้งแต่อายุ 20 ปีขึ้นไป '
                  ' สามารถทำได้โดยการชั่งน้ำหนักตัวเป็นกิโลกรัม และวัดส่วนสูงเป็นเซนติเมตร แล้วนำมาหาดัชมีมวลกาย โดยใช้โปรแกรมวัดค่าความอ้วนข้างต้น',
                  style: TextStyle(fontSize: 24.0),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset(
                          'assets/images/bmii.jpg',
                          height: 300,
                          width: 500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.sentiment_neutral_sharp,
                                  size: 40.0, color: Colors.blue),
                              Text(
                                '  >>  น้ำหนักต่ำกว่าเกณฑ์  : ภาวะเสี่ยงต่อโรคมากกว่าคนปกติ',
                                style: TextStyle(fontSize: 15.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.sentiment_very_satisfied,
                                  size: 40.0, color: Colors.green),
                              Text(
                                '  >>  ปกติ สมส่วนสุขภาพดี  : ภาวะเสี่ยงต่อโรคเท่าคนปกติ',
                                style: TextStyle(fontSize: 15.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.sentiment_dissatisfied,
                                  size: 40.0, color: Colors.deepOrangeAccent),
                              Text(
                                '  >>  ท้วม โรคอ้วนระยะแรก  : ภาวะเสี่ยงต่อโรคอันตรายระดับ1',
                                style: TextStyle(fontSize: 15.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.sentiment_very_dissatisfied,
                                  size: 40.0, color: Colors.red.shade900),
                              const Text(
                                '  >>  อ้วน โรคอ้วนระยะสอง  : ภาวะเสี่ยงต่อโรคอันตรายระดับ2',
                                style: TextStyle(fontSize: 15.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.mood_bad,
                                  size: 40.0, color: Colors.purple),
                              Text(
                                '  >>  อ้วนมาก โรคอ้วนระยะสาม  : ภาวะเสี่ยงต่อโรคอันตรายระดับ3',
                                style: TextStyle(fontSize: 15.5),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BMI(),
                            ));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pink.shade200),
                        fixedSize: MaterialStateProperty.all(Size(150.0, 50.0)),
                      ),
                      child: const Text(
                        'คำนวณ BMI',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
