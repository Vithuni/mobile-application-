import 'package:admin/service/auth.dart';
import 'package:admin/service/shared_pref.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
String? Profile,name,email;

getthesharedpref()async{
  Profile=await SharedPreferenceHelper().getUserProfile();
  name=await SharedPreferenceHelper().getUserName();
  email=await SharedPreferenceHelper().getUserEmail();

  setState(() {
    
  });
}

onthisload()async{
  await getthesharedpref();
  setState(() {
    
  });
}

@override
  void initState() {
    onthisload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 45.0,left: 20.0,right: 20.0),
                height: MediaQuery.of(context).size.height/4.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(MediaQuery.of(context).size.width, 105.0)
                  )
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/5.5),
                  child: Material(
                    
                    borderRadius: BorderRadius.circular(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child:Image.asset("images/boy.jpg",height:120,width:100,fit:BoxFit.cover,)
                    )
                  ),
                ),
              ),
              Center(
                child: Padding(padding: EdgeInsets.only(top: 70.0),child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Vithuni",style:TextStyle(
                    color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                  ) ,)],),),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child:Material(
              elevation: 2.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(children: [
                  Icon(Icons.person,color: Colors.black,),
                  SizedBox(width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",style: TextStyle(
                    color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600
                  ),),
                  Text("Vithuni",style: TextStyle(
                    color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600
                  ),),
                    ],
                  )
                  
                ],
                ),

              ),  
              )
            ),
            Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child:Material(
              elevation: 2.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(children: [
                  Icon(Icons.email,color: Colors.black,),
                  SizedBox(width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email",style: TextStyle(
                    color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600
                  ),),
                  Text("rvithuni@gmail.com",style: TextStyle(
                    color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600
                  ),),
                    ],
                  )
                  
                ],
                ),

              ),  
              )
            ),
            Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child:Material(
              elevation: 2.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(children: [
                  Icon(Icons.description,color: Colors.black,),
                  SizedBox(width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Terms and Condition",style: TextStyle(
                    color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600
                  ),),
                    ],
                  )
                  
                ],
                ),

              ),  
              )
            ),
             GestureDetector(
              onTap: () {
                AuthMethods().deleteuser();
              },
               child: Container(
                           margin: EdgeInsets.symmetric(horizontal: 20.0),
                           child:Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(children: [
                    Icon(Icons.delete,color: Colors.black,),
                    SizedBox(width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Delete Account",style: TextStyle(
                      color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600
                    ),),
                      ],
                    )
                    
                  ],
                  ),
               
                ),  
                )
                           ),
             ),
             GestureDetector(
              onTap: () {
                AuthMethods().SignOut();
              },
               child: Container(
                           margin: EdgeInsets.symmetric(horizontal: 20.0),
                           child:Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(children: [
                    Icon(Icons.logout,color: Colors.black,),
                    SizedBox(width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Log Out",style: TextStyle(
                      color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600
                    ),),
                      ],
                    )
                    
                  ],
                  ),
               
                ),  
                )
                           ),
             ),
          
        ],),
      ),
    );
  }
}