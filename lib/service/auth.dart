import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  getCurrentUser ()async{
    var auth = FirebaseAuth.instance;
    return await auth.currentUser;
  }
Future SignOut ()async{
await FirebaseAuth. instance.signOut () ;
}
Future deleteuser()async{
User? user= await FirebaseAuth.instance. currentUser;
user?.delete(); 
}
}