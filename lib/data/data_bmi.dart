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
              image: AssetImage("assets/images/health.png"), // <-- BACKGROUND IMAGE
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
            padding: const EdgeInsets.all(65),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data'),
                SizedBox(width: 18.0,height: 18.0,),
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
                      child: const Text(
                        'คำนวณBMI',
                        style: TextStyle(fontSize: 20.0),
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
