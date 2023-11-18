import 'package:bmi/data/data.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  var _feetBackAns = '';
  var _feetBackText = '';
  var num = 0.0;

  void _handleClickButton() {
    var intput1 = double.tryParse(_controller1.text);
    var intput2 = double.tryParse(_controller2.text);
    if (intput1 == null && intput2 == null) {
      setState(() {
        _feetBackAns = 'Please enter your data ';
      });
    } else if (intput1 == null || intput1.toString().length < 2) {
      setState(() {
        _feetBackAns = 'Please enter your number';
      });
    } else if (intput2 == null || intput2.toString().length < 3) {
      setState(() {
        _feetBackAns = 'Please enter your advice';
      });
    } else {
      num = intput1 / ((intput2 / 100) * (intput2 / 100));
      var ans = num.toStringAsPrecision(3);
      setState(() {
        _feetBackAns = 'Rate : $ans';
      });
      if (num == 5)
        setState(() {
          _feetBackText = 'ดีมาก';
        });
    }
    if (num == 4)
      setState(() {
        _feetBackText = 'ดี';
      });
    if (num == 3)
      setState(() {
        _feetBackText = 'พอใช้';
      });
    if (num == 2)
      setState(() {
        _feetBackText = 'แย่';
      });
    if (num == 1)
      setState(() {
        _feetBackText = 'แย่มาก';
      });
  }

  void _clearClickButton() {
    setState(() {
      _feetBackAns = '';
      _feetBackText = '';
      _controller1 = TextEditingController();
      _controller2 = TextEditingController();
      num = 0.0;
    });
  }

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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('ให้คะแนนความพึงพอใจ'),
          ),
          body: Container(
            padding: const EdgeInsets.all(65),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(_feetBackAns,
                            style: const TextStyle(fontSize: 50)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (num == 5)
                            const Icon(Icons.sentiment_neutral_sharp,
                                size: 100.0, color: Colors.blue),
                          if (num == 4)
                            const Icon(Icons.sentiment_very_satisfied,
                                size: 100.0, color: Colors.green),
                          if (num == 3)
                            Icon(Icons.sentiment_dissatisfied,
                                size: 100.0, color: Colors.orange),
                          if (num == 2)
                            Icon(Icons.mood_bad,
                                size: 100.0, color: Colors.purple),
                          if (num == 1)
                            const Icon(Icons.sentiment_dissatisfied_rounded,
                                size: 100.0, color: Colors.red),
                          Text(_feetBackText,
                              style: const TextStyle(fontSize: 50)),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 100.0, right: 100.0, top: 16.0),
                        child: TextField(
                          controller: _controller1,
                          style: TextStyle(
                            //backgroundColor: Colors.yellow.shade200,
                            color: Colors.green,
                            fontSize: 22.0,
                          ),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            //floatingLabelAlignment: FloatingLabelAlignment.center,
                            border: OutlineInputBorder(),
                            labelText: 'คะแนน',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 100.0, right: 100.0, top: 16.0, bottom: 8.0),
                        child: TextField(
                          controller: _controller2,
                          style: TextStyle(
                            //backgroundColor: Colors.yellow.shade200,
                            color: Colors.green,
                            fontSize: 22.0,
                          ),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'คำแนะนำ',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: _handleClickButton,
                              child: const Text(
                                'ตกลง',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            ElevatedButton(
                              onPressed: _clearClickButton,
                              child: const Text(
                                'แก้ไข',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DataBMI(),
                                    ));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.pink.shade200),
                                //fixedSize: MaterialStateProperty.all(Size(150.0, 50.0)),
                              ),
                              child: const Text(
                                'ระดับความพึงพอใจ',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
