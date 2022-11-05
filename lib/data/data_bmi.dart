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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ยินดีต้อนรับ')
        ],
      ),
    );
  }
}
