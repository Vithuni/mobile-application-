import 'package:admin/widget/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Order> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Material(
              elevation: 2.0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Foot Cart",
                    style: Appwidget.HeadlineTextFeildStyle(),
                  ),
                ),
              ),

    ),
    SizedBox(height: 30.0,),
    Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              height: 70,
              width: 30,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("2"),),
            ),
            SizedBox(width: 20.0,),
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset("images/shose2.png",height: 90,width: 90,fit: BoxFit.cover,)),
              Column(
                children: [
                  Text("Adidas",style: Appwidget.boldTextFeildStyle(),),
                  Text("\$400",style: Appwidget.boldTextFeildStyle(),)
                ],
              )
        
          ],),
        ),
      ),
    ),
    Spacer(),
    Divider(),
    Padding(padding: const EdgeInsets.only(left: 10.0,right: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Total Price",style: Appwidget.boldTextFeildStyle(),),
        Text("\$400",style: Appwidget.boldTextFeildStyle(),),
      ],
    ),),
    SizedBox(height: 20.0,),
    Container(
      padding: EdgeInsets.symmetric(vertical: 10.0,),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
      child: Center(child: Text("CheckOut",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)),
    )
          ],
        ),
      ),
    );
  }
}