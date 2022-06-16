import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_screen.dart';

class SECONDSCREEN extends StatefulWidget {
  const SECONDSCREEN({Key? key}) : super(key: key);

  @override
  State<SECONDSCREEN> createState() => _SECONDSCREENState();
}

class _SECONDSCREENState extends State<SECONDSCREEN> {
  final c3 = TextEditingController();
  double lol = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: const Text("Calculation"),
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 235, 114, 15)),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: c3,
              decoration: InputDecoration(
                labelText: 'Amount',
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
              child: Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.orange)),
                      onPressed: () {
                        lol = double.parse(c3.text);
                        final route = MaterialPageRoute(
                            builder: (context) => HOMESCREEN(lol));
                        Navigator.push(context, route);
                      },
                      child: const Text("Calculate"))))
        ]));
  }
}
