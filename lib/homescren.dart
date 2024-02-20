
import 'package:exam2/list.dart';
import 'package:flutter/material.dart';

import "package:flutter/material.dart";

class homescreen1
    extends StatefulWidget {
  const homescreen1
      ({super.key});

  @override
  State<homescreen1> createState() => _homescreen1State();
}

class _homescreen1State extends State<homescreen1> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back,size: 25,),
                  SizedBox(width: 100),
                  Text('Womens style',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 20,),),
                  SizedBox(width: 55),
                  Icon(Icons.chat,size: 25),
                  SizedBox(width: 15),
                  Icon(Icons.card_travel,size: 25,),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      
                      Text('Categories',style: TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 30),
                              Container(height: 50,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black ),color: Colors.grey.shade700),
                              child: Image.asset('assets/girls sports shoes.png',fit: BoxFit.contain,),
                              ),
                              SizedBox(width: 15),
                              Container(height: 50,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black ),color: Colors.grey.shade700),
                                child: Image.asset('assets/girls party wear sandal.png',fit: BoxFit.contain,),
                              ),
                              SizedBox(width: 15),
                              Container(height: 50,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black ),color: Colors.grey.shade700),
                                child: Image.asset('assets/watches traditional.png',fit: BoxFit.contain,),
                              ),
                              SizedBox(width: 15),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(L1.length, (index1) =>  GestureDetector(
                            onTap: () {
                              Navigator.push( context,MaterialPageRoute(builder:(context)=>const second()
                              ),
                              );
                              arguments: L1[index1];
                            },
                            child: homescreen(img: L1[index1]['img'],name: L1[index1]['name'],price:L1[index1]['prize'], )))
                    ),
                  ),






                  // SizedBox(height: 5),
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         SizedBox(width: 50),
                  //         Text('Shoes',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 21),),
                  //         SizedBox(width: 50),
                  //         Text('Sandals',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 21),),
                  //         SizedBox(width: 33),
                  //         Text('Watches',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 21),),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // SizedBox(height: 10),
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(10),
                  //           child: Container(height: 300,width: 180,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black ),color: Colors.white),
                  //           child: Image.asset('assets/girls sports shoes.png',fit: BoxFit.contain,),),
                  //       //    Text('Sports shoes',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 25),),
                  //         ),
                  //
                  //         Padding(
                  //           padding: const EdgeInsets.only(left: 10),
                  //           child: Container(height: 250,width: 170,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black ),color: Colors.grey.shade700),),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.all(10),
                  //           child: Container(height: 250,width: 170,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black ),color: Colors.grey.shade700),),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.only(left: 10),
                  //           child: Container(height: 250,width: 170,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black ),color: Colors.grey.shade700),),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                ],
              )
            ],
          ),
        )
       ),
      );
    }
}
Widget homescreen({int? price,String? name,String? img,String? descrition,})
{
  var categories;
  var price;
  var decription;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: 300, width: 170,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade100),color: Colors.grey.shade100),
        child: Column(
          children: [
            Image.asset('assets/$img',fit: BoxFit.cover,),
            Text("\$$decription",style: TextStyle(color: Colors.black,fontSize: 15),),
            Text(name!,overflow: TextOverflow.ellipsis ,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
            Text("\$$price",style: TextStyle(color: Colors.black,fontSize: 15),)
          ],
        )
    ),
  );
}


