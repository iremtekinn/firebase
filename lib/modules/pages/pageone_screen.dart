import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            color: Colors.blue,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 180,
                      color: Colors.pink,
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
                              color: Colors.green,
                              height: 155,
                              width: 320,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "What is the best way to manage state in flutter",
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
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
    ));
  }
}
