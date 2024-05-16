import 'package:admin/widget/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:admin/pages/details.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

bool image=false, shose2=false, shose3=false, shose4=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0,left: 20.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
          'Hello vithuni',
        style: Appwidget.boldTextFeildStyle()
          ),

        Container(
          margin: EdgeInsets.only(right: 20.0),
          padding: EdgeInsets.all(3),
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
        child: Icon(Icons.shopping_cart,color:Colors.white ,),
       ) 


         ],
        ),

        SizedBox(height: 20.0,),
         Text('Shoses',style: Appwidget.boldTextFeildStyle()),

          Text('Discover and Get Great shoses',
        style: Appwidget.LightTextFeildStyle()),

        SizedBox(height: 20.0,),
        Container(
          margin: EdgeInsets.only(right: 20.0),
          child: showItem()),  
        SizedBox(height:30.0 ,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
              },
              child: Container(
                margin: EdgeInsets.all(4),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container( 
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.asset(
                        "images/OIP.jpeg",
                        height: 150,
                        width: 150,
                        ),
                      Text("Adidas",
                      style: Appwidget.boldTextFeildStyle(),),
                      SizedBox(height: 5.0,),
                      Text("Prices",
                      style: Appwidget.LightTextFeildStyle(),),
                      SizedBox(height: 5.0,),
                      Text("\$500",style:Appwidget.LightTextFeildStyle() ,)
                    ],),
                  ),
                ),
              ),
            ),
            SizedBox(width:15.0 ,),
            Container(
              margin: EdgeInsets.all(4),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container( 
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset(
                      "images/nike.jpg",
                      height: 150,
                      width: 150,
                      ),
                    Text("Nike",
                    style: Appwidget.boldTextFeildStyle(),),
                    SizedBox(height: 5.0,),
                    Text("Prices",
                    style: Appwidget.LightTextFeildStyle(),),
                    SizedBox(height: 5.0,),
                    Text("\$600",style:Appwidget.LightTextFeildStyle() ,)
                  ],),
                ),
              ),
            )
          ],),
        ),
        SizedBox(height: 30.0,),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(5),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image.asset(
                  "images/puma.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                  ),
                  SizedBox(width: 20.0,),
                  Column(children: [
                    Container(
                      child: Text("Puma",style: Appwidget.boldTextFeildStyle(),)),
                      SizedBox(height: 5.0,),
                      Container(
                      child: Text("Price",style: Appwidget.semiBooldTextFeildStyle(),)),
                      SizedBox(height: 5.0,),
                      Container(
                      child: Text("\$400",style: Appwidget.semiBooldTextFeildStyle(),))
                  ],)
              ],) 
              ,
            ),
          ),
        )
      ],
      )
      ),
    );
  }
  Widget showItem(){
    return   Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            GestureDetector(
              onTap: (){
                image=true;
                shose2=false;
                shose3=false;
                shose4=false;
                setState(() {
                  
                });
              },
              child: Material(
                elevation: 5.0, 
                borderRadius: BorderRadius.circular(10),
              child : Container(
                decoration: BoxDecoration(color: image? Colors.black:Colors.white,borderRadius: BorderRadius.circular(10) ),
                padding: EdgeInsets.all(10),
                child: Image.asset("images/image.png",height: 50,width: 50,fit: BoxFit.cover,),
              )
              ),
            ),

             GestureDetector(
              onTap: (){
                image=false;
                shose2=true;
                shose3=false;
                shose4=false;
                setState(() {
                  
                });
              },
               child: Material(
                elevation: 5.0, 
                borderRadius: BorderRadius.circular(10),
             child : Container(
                decoration: BoxDecoration(color: shose2? Colors.black:Colors.white,borderRadius: BorderRadius.circular(10) ),              
                padding: EdgeInsets.all(10),
                child: Image.asset("images/shose2.png",height: 50,width: 50,fit: BoxFit.cover,),
                           )
                           ),
             ),

             GestureDetector(
               onTap: (){
                image=false;
                shose2=false;
                shose3=true;
                shose4=false;
                setState(() {
                  
                });
              },
               child: Material(
                elevation: 5.0, 
                borderRadius: BorderRadius.circular(10),
              child : Container(
                decoration: BoxDecoration(color: shose3? Colors.black:Colors.white,borderRadius: BorderRadius.circular(10) ),
                padding: EdgeInsets.all(10),
                child: Image.asset("images/shose3.png",height: 50,width: 50,fit: BoxFit.cover,),
                           )
                           ),
             ),

             GestureDetector(
              onTap: (){
                image=false;
                shose2=false;
                shose3=false;
                shose4=true;
                setState(() {
                  
                });
              },
               child: Material(
                elevation: 5.0, 
                borderRadius: BorderRadius.circular(10),
              child : Container(
                decoration: BoxDecoration(color: shose4? Colors.black:Colors.white,borderRadius: BorderRadius.circular(10) ),
                padding: EdgeInsets.all(10),
                child: Image.asset("images/shose4.png",height: 50,width: 50,fit:BoxFit.cover,),
                           )
                           ),
             )
          ],);
  }
}