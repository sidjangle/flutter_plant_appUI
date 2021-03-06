import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {


  final textstyle  = TextStyle(fontSize: 25,color: Colors.black,
  fontWeight: FontWeight.w700);

    final textsubstyle  = TextStyle(fontSize: 20,color: Colors.grey,
  );
  @override
  Widget build(BuildContext context) {
    return 
    
    Column(
      children: [
        productstyle(context,'assets/plant1.png'),
                productstyle(context,'assets/pant2.png')
            ],
    );
  }


   productstyle(BuildContext context,image){
    return  Container(
          padding: EdgeInsets.only(left:10),
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width - 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Image.asset(image,fit: BoxFit.contain,),
          Text('Turf pot plant',style: textstyle,),
            SizedBox(height:5),
          Text('Big leaf plant in a turf pot for your home or office decor',style: textsubstyle,)

         ,
         SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
Text('Rs 4,500',style: textstyle,)
,IconButton(
  padding: EdgeInsets.zero,
  icon: Icon(Icons.add_circle,size: 40,), onPressed: (){
  
})
         ],)  

          ],),
          
        );
 
  }
}