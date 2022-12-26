import 'package:blog/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EFF1),
        body: SingleChildScrollView(
          
          
      child: Column(
        
        children: [
          Container(
            width: double.infinity,
            height: 70,
            //color:Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xff005FEE),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 730,
            color: Color(0xFFF1EFF1),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
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
                                      "What is the best way to manage state in flutter",
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
                                    "Lorem ipsum dolar sit amet, consectetur adipisicing elit,sed da eiusmad tempar.",
                                    maxLines: 2,
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          
        ],
      ),
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
        },
        label: const Text('Create'),
        icon: const Icon(Icons.add),
        backgroundColor: Color(0xFFFFA41B),
      ),
      
    );
  }
}
