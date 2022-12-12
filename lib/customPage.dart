import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'customPage.dart';



// void main() {
//   runApp(const alco());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class customPage extends StatefulWidget {
  const customPage({Key? key}) : super(key: key);

  @override
  State<customPage> createState() => _customPageState();
}

class _customPageState extends State<customPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: SvgPicture.asset(
                'assets/icons/box_search.svg'
            ),
            actions: [IconButton(
              onPressed: () {

              },
              icon: SvgPicture.asset(
                  'assets/icons/icon_search.svg'
              ),
            )],
            bottom: PreferredSize(
                child: Container(
                  color: Colors.black,
                  height: 4.0,
                ),
                preferredSize: const Size.fromHeight(4.0)),
          ),

          body: Stack(
            children: [

              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(children: [


                  SizedBox(height: 50.0,),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(children: [Text("인기주류", style: TextStyle(fontSize: 25)),
                      Text("TOP10", style: TextStyle(color: Colors.orange, fontSize: 20)),
                      SizedBox(width: 120.0,),
                      TextButton(onPressed: () {

                      }, child: Text("더보기",style: TextStyle(color: Colors.grey),))


                    ],),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(children: [Text("베스트셀링 주류를 만나보세요",style: TextStyle(color: Colors.grey), )],)),
                  SizedBox(height: 30.0,),






                ] ////////////////////////////////////////////////

                ),
              ),
              Container(

                //alignment: Alignment.center,

                child: Positioned(
                  child: SvgPicture.asset('assets/icons/last_background.svg'),

                ),


              ),
              Container(

                //alignment: Alignment.center,

                child: Positioned(
                  child: SvgPicture.asset('assets/icons/nav_bg.svg'),
                  top: 570,
                ),


              ),



            ],
            
          ),


          /////////////////////////////////////////////////////////
          // bottomNavigationBar:
          //
          // Container(
          //   margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          //   child: Stack(
          //       children: [
          //         Container(
          //           child: SvgPicture.asset('assets/icons/nav_bg.svg'),
          //         ),
          //         Container(
          //           child: Positioned(
          //             child: Container(
          //               child: IconButton(
          //                   onPressed: () {
          //                   },
          //                   icon: SvgPicture.asset('assets/icons/nav_icon_1.svg')
          //               ),
          //             ),
          //             top: 48.0,
          //             left: 20.0,
          //           ),
          //         ),
          //         Container(
          //           child: Positioned(
          //             child: Container(
          //               child: IconButton(
          //                   onPressed: () {
          //                   },
          //                   icon: SvgPicture.asset('assets/icons/nav_icon_2.svg')
          //               ),
          //             ),
          //             top: 48.0,
          //             left: 90.0,
          //           ),
          //         ),
          //         Container(
          //           child: Positioned(
          //             child: Container(
          //               child: IconButton(
          //                   onPressed: () {
          //                     // // Navigator.push(
          //                     // //     context,
          //                     // //     MaterialPageRoute(builder: (context) => customMenu(),
          //                     // //     )
          //                     // // );
          //                     // showDialog(
          //                     //     context: context,
          //                     //     barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
          //                     //     builder: (BuildContext context) {
          //                     //       return AlertDialog(
          //                     //         content: customMenu(),
          //                     //         backgroundColor: Colors.transparent,
          //                     //         //insetPadding: const  EdgeInsets.fromLTRB(0,80,0, 80),
          //                     //         actions: [
          //                     //           // TextButton(
          //                     //           //   child: const Text('확인'),
          //                     //           //   onPressed: () {
          //                     //           //     Navigator.of(context).pop();
          //                     //           //   },
          //                     //           // ),
          //                     //         ],
          //                     //       );
          //                     //     }
          //                     // );
          //
          //
          //
          //                   },
          //                   icon: SvgPicture.asset('assets/icons/nav_icon_3.svg')
          //               ),
          //             ),
          //             top: 10.0,
          //             left: 155.0,
          //           ),
          //         ),
          //         Container(
          //           child: Positioned(
          //             child: Container(
          //               child: IconButton(
          //                   onPressed: () {
          //                   },
          //                   icon: SvgPicture.asset('assets/icons/nav_icon_4.svg')
          //               ),
          //             ),
          //             top: 48.0,
          //             left: 230.0,
          //           ),
          //         ),
          //         Container(
          //           child: Positioned(
          //             child: Container(
          //               child: IconButton(
          //                   onPressed: () {
          //                   },
          //                   icon: SvgPicture.asset('assets/icons/nav_icon_5.svg')
          //               ),
          //             ),
          //             top: 48.0,
          //             left: 300.0,
          //           ),
          //         ),
          //
          //       ]),
          // )////////////////////////////////////////////////////////




      ),




    );
  }
}

