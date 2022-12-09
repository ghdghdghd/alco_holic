import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'customPage.dart';

void main() {
  runApp(const alco());
}

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

class alco extends StatefulWidget {
  const alco({Key? key}) : super(key: key);

  @override
  State<alco> createState() => _alcoState();
}

class _alcoState extends State<alco> {
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

        body: SingleChildScrollView(


          child: Container(
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
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                height: 300,
                //width: 500,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (c, i) {
                    return Container(
                      width: 160.0,
                      child: Stack(children: [
                        Container(
                          child: SvgPicture.asset('assets/icons/box_1.svg'),
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        ),
                        Positioned(
                            child: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     width: 1,
                              //   )
                              // ),
                              height: 159,
                              width: 130,
                              child: Image.asset('assets/images/drink_image.png'),
                            ),
                            left: 15,
                        ),
                          Container(
                           child: Positioned(
                               child: Text("글렌파클라스12년 1L", style: TextStyle(fontWeight: FontWeight.w800 )),
                             top: 150,
                             left: 15,
                           ),
                         ),
                          Container(
                           child: Positioned(
                             child: Text("스페이사이드", style: TextStyle(fontWeight: FontWeight.w100),),
                             top: 170,
                             left: 15,
                           ),
                         ),
                         Container(
                           child: Positioned(
                             child: Text("스페인", style: TextStyle(fontWeight: FontWeight.w100),),
                             top: 190,
                             left: 15,
                           ),
                         ),
                         Container(
                           child: Positioned(
                             child: Text("43%", style: TextStyle(fontWeight: FontWeight.w100),),
                             top: 210,
                             left: 15,
                           ),
                         ),
                        Container(
                          child: Positioned(
                            child: SvgPicture.asset('assets/icons/rank.svg'),
                            top: 13,
                            left: 120,
                          ),
                        ),
                        Container(
                          child: Positioned(
                            child: Text((i+1).toString(), style: TextStyle(fontWeight: FontWeight.w800)),
                            top: 16,
                            left: 125,
                          ),
                        ),
                        Container(
                          child: Positioned(
                            child: SvgPicture.asset('assets/icons/icon_like.svg'),
                            top: 110,
                            left: 120,
                          ),
                        ),
                        SizedBox(height: 20.0,),

                      ]),
                    );
                  },
                 ),
              ),///////////////////////////////////////////////////

              Container(
                height: 180,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: 3,
                   itemBuilder: (c,i) {
                     return Container(
                       child: Stack(
                           children: [
                             Container(
                               child: SvgPicture.asset('assets/icons/box_2.svg'),
                             ),
                             Positioned(
                                 child: Container(
                                   margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                     child: Row(children: [Text("내취향에 딱! 맞는 술은?", style: TextStyle(fontSize: 22)),

                                        SizedBox(width: 45.0,),
                                       TextButton(onPressed: () {

                                       }, child: Text("Test >",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),))


                                     ],),

                                 ),
                              top: 25,
                             )


                             // Container(
                             //   margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                             //   child: Row(children: [Text("홍길동님을 위한", style: TextStyle(fontSize: 25)),
                             //
                             //
                             //     TextButton(onPressed: () {
                             //
                             //     }, child: Text("Test >",style: TextStyle(color: Colors.grey),))
                             //
                             //
                             //   ],),
                             // ),

                           ]),
                     );
                   },),
              ),/////////////////////////////////////////////////////////

              Container(
                child: Stack(
                    children: [
                      Container(child: SvgPicture.asset('assets/icons/box_3.svg')),
                      Positioned(
                        child: Container(
                          // height: 170,
                          // width: 155,
                          child: Image.asset('assets/images/drink_image.png'),
                        ),
                        left: 15,
                        top: 55,
                      ),
                      Container(
                        child: Positioned(
                          child: Text("쌀쌀해진 날씨,", style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20)),
                          top: 60,
                          left: 140,
                        ),
                      ),
                      Container(
                        child: Positioned(
                          child: Text("글렌파 클라스", style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20)),
                          top: 85,
                          left: 140,
                        ),
                      ),
                      Container(
                        child: Positioned(
                          child: Text("를 추천해요!", style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20)),
                          top: 85,
                          left: 250,
                        ),
                      ),
                      Container(
                        child: Positioned(
                          child: Text("추운 겨울 몸을 녹여줄 위스키", style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15)),
                          top: 120,
                          left: 140,
                        ),
                      ),
                      Container(
                        child: Positioned(
                          child: Text("추천 페어링", style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)),
                          top: 150,
                          left: 140,
                        ),
                      ),
                      Container(
                        child: Positioned(
                          child: Text("#카나페   #올리브   #견과류", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
                          top: 170,
                          left: 140,
                        ),
                      ),

                      
                    ]
                ),
              ),///////////////////////////////////////////////////

              SizedBox(height: 50.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(children: [Text("홍길동님을 위한", style: TextStyle(fontSize: 25)),
                  Text("추천주류", style: TextStyle(color: Colors.orange, fontSize: 23)),
                  SizedBox(width: 30.0,),
                  TextButton(onPressed: () {

                  }, child: Text("더보기",style: TextStyle(color: Colors.grey),))


                ],),
              ),
              SizedBox(height: 20.0,),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(children: [Text("내 취향에 딱 맞는 제품을 추천받아보세요.",style: TextStyle(color: Colors.grey), )],)),
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                height: 300,
                //width: 500,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (c, i) {
                    return Container(
                      width: 160.0,
                      child: Stack(children: [
                        Container(
                          child: SvgPicture.asset('assets/icons/box_1.svg'),
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        ),
                        Positioned(
                          child: Container(
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //     width: 1,
                            //   )
                            // ),
                            height: 159,
                            width: 130,
                            child: Image.asset('assets/images/drink_image.png'),
                          ),
                          left: 15,
                        ),
                        Container(
                          child: Positioned(
                            child: Text("글렌파클라스12년 1L", style: TextStyle(fontWeight: FontWeight.w800 )),
                            top: 150,
                            left: 15,
                          ),
                        ),
                        Container(
                          child: Positioned(
                            child: Text("스페이사이드", style: TextStyle(fontWeight: FontWeight.w100),),
                            top: 170,
                            left: 15,
                          ),
                        ),
                        Container(
                          child: Positioned(
                            child: Text("스페인", style: TextStyle(fontWeight: FontWeight.w100),),
                            top: 190,
                            left: 15,
                          ),
                        ),
                        Container(
                          child: Positioned(
                            child: Text("43%", style: TextStyle(fontWeight: FontWeight.w100),),
                            top: 210,
                            left: 15,
                          ),
                        ),
                        // Container(
                        //   child: Positioned(
                        //     child: SvgPicture.asset('assets/icons/rank.svg'),
                        //     top: 13,
                        //     left: 120,
                        //   ),
                        // ),
                        // Container(
                        //   child: Positioned(
                        //     child: Text((i+1).toString(), style: TextStyle(fontWeight: FontWeight.w800)),
                        //     top: 16,
                        //     left: 125,
                        //   ),
                        // ),
                        Container(
                          child: Positioned(
                            child: SvgPicture.asset('assets/icons/icon_like.svg'),
                            top: 110,
                            left: 120,
                          ),
                        ),
                        SizedBox(height: 20.0,),

                      ]),
                    );
                  },
                ),
              ),////////////////////////////////////////////////////////////

              SizedBox(height: 20.0,),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(children: [Text("00에서 얘기해요", style: TextStyle(fontSize: 25)),

                  SizedBox(width: 100.0,),
                  TextButton(onPressed: () {

                  }, child: Text("더보기",style: TextStyle(color: Colors.grey),))


                ],),
              ),
              SizedBox(height: 20.0,),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(children: [Text("같은 취향을 가진 사람들과 자유롭게 대화해요.",style: TextStyle(color: Colors.grey), )],)
              ),/////////////////////////////////////////////////////////
              SizedBox(height: 30.0,),
              Container(
                margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                            Container(
                              child: SvgPicture.asset('assets/icons/box_4.svg'),
                            ),
                              // Container(
                              //   child: Positioned(
                              //     child: Text("잠실 칵테일 맞비 다녀왔어요!", style: TextStyle(fontWeight: FontWeight.w100),),
                              //     top: 150,
                              //     left: 10,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text("잠실 칵테일 맛집 다녀왔어요!",textAlign: TextAlign.start),
                        Container(
                          width: 165,
                            child: Text("추천해요", textAlign: TextAlign.start)
                        ),
                      ],
                      
                      
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: SvgPicture.asset('assets/icons/box_5.svg'),
                                ),
                               ],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Text("잠실 칵테일 맛집 다녀왔어요!",textAlign: TextAlign.start),
                          Container(
                              width: 165,
                              child: Text("추천해요", textAlign: TextAlign.start)
                          ),

                          ],
                      ),
                    ),

                    ],
                ),
              ),////////////////////////////////////////////////////////
              SizedBox(height: 40.0,),
              Container(
                margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                child: SvgPicture.asset('assets/icons/box_5.svg'),
                              ),
                              // Container(
                              //   child: Positioned(
                              //     child: Text("잠실 칵테일 맞비 다녀왔어요!", style: TextStyle(fontWeight: FontWeight.w100),),
                              //     top: 150,
                              //     left: 10,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text("잠실 칵테일 맛집 다녀왔어요!",textAlign: TextAlign.start),
                        Container(
                            width: 165,
                            child: Text("추천해요", textAlign: TextAlign.start)
                        ),
                      ],


                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: SvgPicture.asset('assets/icons/box_6.svg'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Text("잠실 칵테일 맛집 다녀왔어요!",textAlign: TextAlign.start),
                          Container(
                              width: 165,
                              child: Text("추천해요", textAlign: TextAlign.start)
                          ),

                        ],
                      ),
                    ),


                  ],
                ),
              ),







              ] ////////////////////////////////////////////////

            ),
          ),


        ),/////////////////////////////////////////////////////////
        bottomNavigationBar: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Stack(
              children: [
                Container(
                  child: SvgPicture.asset('assets/icons/nav_bg.svg'),
                ),
                Container(
                  child: Positioned(
                      child: Container(
                         child: IconButton(
                             onPressed: () {
                             },
                             icon: SvgPicture.asset('assets/icons/nav_icon_1.svg')
                         ),
                      ),
                    top: 48.0,
                    left: 20.0,
                  ),
                ),
                Container(
                  child: Positioned(
                    child: Container(
                      child: IconButton(
                          onPressed: () {
                          },
                          icon: SvgPicture.asset('assets/icons/nav_icon_2.svg')
                      ),
                    ),
                    top: 48.0,
                    left: 90.0,
                  ),
                ),
                Container(
                  child: Positioned(
                    child: Container(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => customMenu(),
                                )
                            );
                          },
                          icon: SvgPicture.asset('assets/icons/nav_icon_3.svg')
                      ),
                    ),
                    top: 10.0,
                    left: 155.0,
                  ),
                ),
                Container(
                  child: Positioned(
                    child: Container(
                      child: IconButton(
                          onPressed: () {
                          },
                          icon: SvgPicture.asset('assets/icons/nav_icon_4.svg')
                      ),
                    ),
                    top: 48.0,
                    left: 230.0,
                  ),
                ),
                Container(
                  child: Positioned(
                    child: Container(
                      child: IconButton(
                          onPressed: () {
                          },
                          icon: SvgPicture.asset('assets/icons/nav_icon_5.svg')
                      ),
                    ),
                    top: 48.0,
                    left: 300.0,
                  ),
                ),

              ]),
        )////////////////////////////////////////////////////////




      ),




    );
  }
}


class customMenu extends StatefulWidget {
  const customMenu({Key? key}) : super(key: key);

  @override
  State<customMenu> createState() => _customMenuState();
}

class _customMenuState extends State<customMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset('assets/icons/background_new.svg'),
    );
  }
}


