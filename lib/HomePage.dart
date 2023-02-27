import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomescreenState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String m1 = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Text("Table"),
            centerTitle: true,
            backgroundColor: Colors.black,
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back)),
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return multi(m1 as String, index);
            },),
        ));
  }
  Widget multi(String num,int inde)
  {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("$num",style: TextStyle(fontSize: 30,color: Colors.white),),
          Text("X",style: TextStyle(fontSize: 30,color: Colors.white),),
          Text("${inde+1}",style: TextStyle(fontSize: 30,color: Colors.white),),
          Text("=",style: TextStyle(fontSize: 30,color: Colors.white),),
          Text("${(int.parse(num)*(inde+1))}",style: TextStyle(fontSize: 30,color: Colors.white),),
        ],
      ),
    );
  }
}