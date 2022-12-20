import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 100,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap:() => Navigator.pop(context),
                      child: Container(
                        decoration: BoxDecoration(
                           color: Colors.orange.shade800,
                           borderRadius: BorderRadius.circular(30),
                        ),
                        width:50,
                        height:50,
                       
                        child: Icon(Icons.arrow_back)),
                    ),
                    SizedBox(height: 10,),
                    Row(
                  children: [
                    Image.asset("assets/userdata.png"),
                    SizedBox(width: 10,),
                    Center(child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
                  ],
                ),
                  ],
                ),
                
                
              ),
             width: double.infinity,
             height: 200,
             
             decoration: BoxDecoration(
              color: Colors.orange.shade800,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)
                ),
             ),
            ),
            SizedBox(height: 100,),
             Padding(
               padding: const EdgeInsets.only(right:15,left:15),
               child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  prefixIcon: Icon(Icons.person)
                ),
                         ),
             ),
            Padding(
              padding: const EdgeInsets.only(right:15,left:15),
              child: TextFormField(
                keyboardType:TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "email",
                  prefixIcon: Icon(Icons.email)
                ),
              ),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(right:15,left:15),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "password",
                  prefixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
            ),
           SizedBox(height: 200,),
            GestureDetector(
              onTap:() {
                
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 50,
                width: 380,
                
                child: Center(child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 20),),),
              ),
            )
          ],
        ),
      )
    );
  }
}