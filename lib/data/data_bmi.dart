import 'package:flutter/material.dart';

class DataBMI extends StatefulWidget {
  const DataBMI({Key? key}) : super(key: key);

  @override
  State<DataBMI> createState() => _DataBMIState();
}

class _DataBMIState extends State<DataBMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('ค่าดัชนีมวนกาย BMI'),
    ),
    body: Container(
      padding: const  EdgeInsets.all(65),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('dogopegew'),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
