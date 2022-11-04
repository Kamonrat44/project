import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  var _controller1 = TextEditingController();
  var _controller2 = TextEditingController();
  var _feetBackText = '';
  var num =  0.0;
  var ToDoController = TextEditingController();

  void _handleClickButton() {
    var intput1 = double.tryParse(_controller1.text);
    var intput2 = double.tryParse(_controller2.text);

    if (intput1 == null && intput2 == null) {
      setState(() {
        _feetBackText = 'Please enter number ';
      });
    }else if (intput1 == null) {
      setState(() {
        _feetBackText = 'Please enter your wight number ';
      });
    }else if(intput2 == null){
      setState(() {
        _feetBackText = 'Please enter your hight number';
      });
    } else{
      num = intput1/((intput2/100)*(intput2/100));
      var ans = num.toStringAsPrecision(3);
      setState(() {
        _feetBackText = '$ans';
      });
    }
  }
  void _clearClickButton() {
    setState(() {
      _feetBackText = '';
      _controller1 = TextEditingController();
      _controller2 = TextEditingController();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('คำนวนค่าดัชนีมวนกาย BMI'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_feetBackText),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller1,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'น้ำหนัก',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'ส่วนสูง',
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
                      child: Text(
                        'ADD',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    SizedBox(width: 30.0,),
                    ElevatedButton(
                      onPressed: _clearClickButton,
                      child: Text(
                        'clear',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

}
