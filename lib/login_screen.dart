import 'package:flutter/material.dart';
import 'package:login_screen/constants.dart';
import 'package:login_screen/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7B54C1),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image(image: AssetImage("assets/icons8-e-100 (1).png")),
            SizedBox(
              height: 10,
            ),
            Text("ECORP", style: TextStyle(color: KSecondColor, fontSize: 30,),),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextField(hintText: "enter your email", labelText: "Email", icon: Icon(Icons.person,color: Colors.grey)),
                  CustomTextField(hintText: "enter your password", labelText: "Password", icon: Icon(Icons.password,color: Colors.grey)),
                  TextButton(onPressed: (){},child: Text("Forget Password?",style: TextStyle(color: Colors.grey)), ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 140,
                      height: 50,
                      child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(
                                    3,3
                                )
                            )
                          ],
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){},child: Text("Sign Up",style: TextStyle(color: Colors.grey)), ),



                ],
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 40,
                    spreadRadius: 7,
                    offset: Offset(
                      30,30
                    )
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
