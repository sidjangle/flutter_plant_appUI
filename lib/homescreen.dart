import 'package:flutter/material.dart';
import 'package:plantapp/productlist.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textstyle = TextStyle(fontSize: 18, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Row(
      children: [
        Container(
          width: 90,
          color: Color(0xff67864a),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
             Icon(Icons.scatter_plot,size: 40,color: Colors.white,),

              RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Green Plants',
                    style: textstyle,
                  )),
                  
              RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Indoor Plants',
                    style: textstyle,
                  )),
              RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Outdoor Plants',
                    style: textstyle,
                  )),
            ],
          ),
        ),
        SingleChildScrollView(
                  child: Column(
            children: [
              SizedBox(height: 70,),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width - 130,
                    child: Icon(Icons.search_outlined,size: 40,)),
                )
              ],),
              Container(
                padding: EdgeInsets.only(left:10),
                 alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width - 130,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text('Green',style: TextStyle(color:Colors.grey,
                fontSize: 18
                ),),
                Text('Plants',style: TextStyle(
                fontSize: 30
                ))

                ],),
              )

 ,ProductList()
            ],
          ),
        )
      ],
    ));
  }
}
