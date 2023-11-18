import 'package:bmi/page/A_page.dart';
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
              image: AssetImage("assets/images/bk.jpg"),
              // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
          appBar: AppBar(
            title: const Text('ประเมินความพึงพอใจการให้บริการของพนักงานที่มีต่อลูกค้า'),
          ),
          body: Container(
            alignment: FractionalOffset.center,
            padding: const EdgeInsets.all(75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '      กรุณาให้คะแนนความพึงพอใจ '
                  ' (Please Rate Satisfaction)',
                  style: TextStyle(fontSize: 30.0),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset(
                          "assets/images/health.png",
                          height: 400,
                          width: 600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.sentiment_very_satisfied_sharp,
                                  size: 40.0, color: Colors.blue),
                              Text(
                                '  >5>  Excellent  :  ดีมาก',
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
                                '  >4>  Good  :  ดี',
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
                                '  >3>  Average  :  พอใช้',
                                style: TextStyle(fontSize: 15.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.mood_bad_sharp,
                                  size: 40.0, color: Colors.purple),
                              const Text(
                                '  >2>  Poor  :  แย่',
                                style: TextStyle(fontSize: 15.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.sentiment_dissatisfied_rounded,
                                  size: 40.0, color: Colors.red),
                              Text(
                                '  >1>  Verry Poor  :  แย่มาก',
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
                        'Next',
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
