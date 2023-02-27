import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserInputState extends State<User> {
  TextEditingController txttabledata = TextEditingController();
  GlobalKey<FormState> check = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
          key: check,
          child: Scaffold(
            backgroundColor: Colors.lightBlueAccent,
            appBar: AppBar(
              title: Text("Multiplication"),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: "Enter table",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        )
                    ),
                    keyboardType: TextInputType.phone,
                    controller: txttabledata,
                    validator: (value) {
                      if (value!.isEmpty)
                      {
                        return "Enter valid table";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(onPressed: () {
                  if(check.currentState!.validate())
                  {
                    Navigator.pushNamed(context, 'second',arguments: txttabledata.text);
                    txttabledata.clear();
                  }
                },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text("Genrate",),),
              ],
            ),
          ),
        ));
  }
}