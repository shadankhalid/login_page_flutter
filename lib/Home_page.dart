import 'package:assig3/widgets/Button.dart';
import 'package:assig3/widgets/Text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget
{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen App",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top:10, bottom: 10),
              child: Text("Codeplayon",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25) ,),
            ),

            Padding(
              padding: const EdgeInsets.only(top:10, bottom: 10),
              child: MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
            ),



            // password textfield
            Padding(
              padding: const EdgeInsets.only(top:10, bottom: 10),
              child: MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, bottom: 10),
              child: Text("forget password",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold, ),),
            ),
            SizedBox(height: 10),
            MyButton(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?",style: TextStyle(color: Colors.black),),
                  SizedBox(width: 10,),
                  Text("Sign in ",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),)

                ],
              ),

          ],
        ),
      )
    );
    
  }
  
}