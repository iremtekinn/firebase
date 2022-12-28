import 'package:blog/modules/pageone/pageone_controller.dart';
import 'package:blog/routes/app_pages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends GetView<PageOneController> {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF1EFF1),
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
            decoration: BoxDecoration(
              gradient: LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
)
            ),
            width: double.infinity,
            height: 70,
            //color:Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.w500,color: Color(0xFFF1EFF1,),fontSize: 18),
                  ),
                 
                  Icon(
                    Icons.search,
                    color: Color(0xFFF1EFF1,),
                  ),
                  
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 730,
           // color: Color(0xFFF1EFF1),
            child: StreamBuilder(
              stream:controller.db.readBlog(),
              builder: (context, snapshot) {
                return !snapshot.hasData
                ? CircularProgressIndicator()
                :ListView.builder(
                itemCount: snapshot.data!.docs.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  DocumentSnapshot myBlog=
                  snapshot.data!.docs[index];
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
                       color: Color(0xFFF1EFF1),
                       borderRadius: BorderRadius.circular(15),
                        ),
                        margin: EdgeInsets.only(bottom: 10),
                        height: 180,
                        
                        //width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: Image.asset("assets/man.png"),
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF1EFF1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                                
                                height: 155,
                                width: 320,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text(
                                        //"What is the best way to manage state in flutter",
                                        "${myBlog["topic"]}",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Text("Emre Varal"),
                                    SizedBox(height: 10,),
                                    Text(
                                     // "Lorem ipsum dolar sit amet, consectetur adipisicing elit,sed da eiusmad tempar.",
                                     "${myBlog["content"]}",
                                      maxLines: 2,
                                    ),
                                    SizedBox(height: 20,),
                                    GestureDetector(
                                      onTap: () {
                                         controller.db.deleteBlog(
                                                      snapshot.data!.docs[index]
                                                          .id);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                           color: Color(0xFF035AA6),
                                           borderRadius: BorderRadius.circular(30)
                                        ),
                                        width: 30,
                                        height: 30,
                                        
                                        child: Center(child: Icon(Icons.remove,color:Color(0xFFF1EFF1,))),
                                      ))
                                  ],
                                ))
                          ],
                        ),
                      )
                    ],
                  );
                },
              );
              },
              //child: 
              
            ),
          ),
          
        ],
      ),
      )
      
      
    ),
    // floatingActionButton: FloatingActionButton(
    //   backgroundColor: Color(0xFFFFA41B),
    //   child: Text("Create"),
    //   onPressed: () {
    //     Get.toNamed(Routes.PAGETWO);
        
    //   },),
    floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(Routes.PAGETWO);
          controller.analyticsService.logEvent();
        },
        label: const Text('Create'),
        icon: const Icon(Icons.add),
        backgroundColor: Color(0xFFFFA41B),
      ),
      
    );
  }
}
