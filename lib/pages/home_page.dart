import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:herewegoo/service/auth_service.dart';

class HomePage extends StatefulWidget{
  static const String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Home',style: Theme.of(context).textTheme.headline6,),
        centerTitle: true,
      ),
      body:Center(
      child:FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text('Logut',style:Theme.of(context).textTheme.button.copyWith(fontSize: 16)),
        onPressed:(){
          AuthService.signOutUser(context);
        },
        color:Color.fromRGBO(244, 68, 54, 1),
      ),
    ),
    );

  }
}