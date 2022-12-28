import 'package:blog/modules/pagetwo/pagetwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../routes/app_pages.dart';

class PageTwo extends GetView<PageTwoController> {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EFF1),
    
//          appBar: AppBar(
//   title: Text("POST A QUESTION"),
//   leading: GestureDetector(
//     onTap: () { 

//     },
//     child: Icon(
//       Icons.arrow_back,  // add custom icons also
//     ),
//   ),
// ),
          body: SingleChildScrollView(
             
             child: Container(
              width:double.infinity,
             height: 900,
             decoration: BoxDecoration(
         image:DecorationImage(image: AssetImage("assets/bg.png"),fit: BoxFit.cover)
             ),
             child: Column(
               children: [
                Container(
                  width:double.infinity,
                  height: 80,
                  //color:Color(0xFF035AA6),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
)

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PAGEONE);
                          },
                          child: Icon(Icons.arrow_back)),
                        SizedBox(width:10),
                        Text("POST A QUESTION",style: TextStyle(color:Color(0xFFF1EFF1,),fontSize: 18),),
                  
                      ],
                    ),
                  ),
                ),
                   
                 Padding(
                padding: const EdgeInsets.only(left:10, right: 10, bottom: 20, top:20),
                child: TextFormField(
                  controller: controller.topic,
                  maxLines: 3,
                  decoration: InputDecoration(//contentPadding: EdgeInsets.symmetric(vertical: 40,),
                  filled: true,
                  fillColor: Color(0xFFF1EFF1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Topic",
                     //prefixIcon: Icon(Icons.local_florist, color: Colors.deepPurple,),
                  ),
                ),
              ),
                  Padding(
                padding: const EdgeInsets.only(left:10, right: 10, bottom: 20, top:20),
                child: TextFormField(
                  controller: controller.content,
                  maxLines: 20,
                  decoration: InputDecoration(//contentPadding: EdgeInsets.symmetric(vertical: 150),
                  filled: true,
                  fillColor: Color(0xFFF1EFF1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: "Content",
                     //prefixIcon: Icon(Icons.local_florist, color: Colors.deepPurple,),
                  ),
                ),
              ),
                 SizedBox(height:20),
                 
                 
                   
                     
                       
                         
                           
                            
                                Padding(
                                  padding: const EdgeInsets.only(left:200.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      
                                      controller.db.writeBlog(controller.topic.text, controller.content.text);
                                      Get.toNamed(Routes.PAGEONE);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(                 
                                     color:Color(0xFFFFA41B),
                                     borderRadius: BorderRadius.circular(15),
                                      ),
                                                             width:100,
                                                             height:50,
                                                             
                                                             child:Center(child: Text("POST",style: TextStyle(color:Color(0xFFF1EFF1),fontSize: 18),))
                                                             
                                                           ),
                                  ),
                                ),
                                
                           
                         
                   
                 
                 
                 

                   
               ],
             ),
             )
             
          )
      );
  }
}