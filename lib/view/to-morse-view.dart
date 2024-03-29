import 'package:MoorseCode/control/morse-control.dart';
import 'package:MoorseCode/control/view-control.dart';
import 'package:MoorseCode/widgets/MyScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToMorseView extends StatefulWidget {
  @override
  _ToMorseViewState createState() => _ToMorseViewState();
}

class _ToMorseViewState extends State<ToMorseView> {
  TextEditingController _alphaController;
  final morseControl = new MorseControll();
  String textMorseResult = "";
  final controller = Get.put(Controller());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SizedBox.expand(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.0,
              ),
              Text("Converter para código morse"),
              Container(
                child: Text(
                  textMorseResult,
                  style: TextStyle(fontSize: 22.0, color: Colors.blueAccent),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Alpha"),
                    controller: _alphaController,
                    onChanged: (alpha) {
                      setState(() {
                        textMorseResult = morseControl.toMorse(alpha);
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 0.5,
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/toalpha');
                      },
                      child: Text("Converter para Alpha."),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
