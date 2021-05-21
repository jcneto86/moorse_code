import 'package:MoorseCode/control/morse-control.dart';
import 'package:MoorseCode/widgets/MyScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToAlphaView extends StatefulWidget {
  @override
  _ToAlphaViewState createState() => _ToAlphaViewState();
}

class _ToAlphaViewState extends State<ToAlphaView> {
  TextEditingController _morseController;
  final morseControl = new MorseControll();
  String textAlphaResult = "";

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
              Text("Converter para alpha"),
              Container(
                child: Text(
                  textAlphaResult,
                  style: TextStyle(fontSize: 22.0, color: Colors.blueAccent),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Código morse"),
                    controller: _morseController,
                    onChanged: (morse) {
                      setState(() {
                        textAlphaResult = morseControl.toAlpha(morse);
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
                        Navigator.pop(context, '/tomorse');
                      },
                      child: Text("Converter para morse"),
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
