import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// void tab2() {
//   runApp(const banner2());
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

    return Scaffold(


        body: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(children: [

              Container(
                height: 300,
                //width: 500,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (c, i) {
                    return Container(
                      width: 160.0,
                      child: Stack(children: [
                        Container(
                          child: SvgPicture.asset('assets/icons/box_2.svg'),
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




                      ]),
                    );
                  },








                ),

              ),



              ]),
          ),


      );





  }
}

