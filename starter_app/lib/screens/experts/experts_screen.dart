import 'package:flutter/material.dart';

import '../../mystyle/constantsColors.dart';
import '../../mystyle/text_style.dart';

class ExpertsScreen extends StatefulWidget {
  const ExpertsScreen({Key? key}) : super(key: key);

  @override
  State<ExpertsScreen> createState() => _ExpertsScreenState();
}

class _ExpertsScreenState extends State<ExpertsScreen> {
  String _selectedService = "Servic_1";
  List<Service> serviceList = [
    Service(
        name: "Service_1",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=1",
        favorite: false),
    Service(
        name: "Service_2",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=2",
        favorite: true),
    Service(
        name: "Service_3",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=3",
        favorite: false),
    Service(
        name: "Service_4",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=4",
        favorite: true),
    Service(
        name: "Service_5",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=5",
        favorite: false),
  ];

  String _selectedExpert = "Expert_1";
  List<Expert> expertList = [
    Expert(
        name: "Expert_1",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=1",
        favorite: false),
    Expert(
        name: "Expert_2",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=2",
        favorite: true),
    Expert(
        name: "Expert_3",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=3",
        favorite: false),
    Expert(
        name: "Expert_4",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=4",
        favorite: true),
    Expert(
        name: "Expert_5",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=5",
        favorite: false),
    Expert(
        name: "Expert_6",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=1",
        favorite: false),
    Expert(
        name: "Expert_7",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=2",
        favorite: true),
    Expert(
        name: "Expert_8",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=3",
        favorite: false),
    Expert(
        name: "Expert_9",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=4",
        favorite: true),
    Expert(
        name: "Expert_10",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=5",
        favorite: false),
    Expert(
        name: "Expert_11",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=1",
        favorite: false),
    Expert(
        name: "Expert_12",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=2",
        favorite: true),
    Expert(
        name: "Expert_13",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=3",
        favorite: false),
    Expert(
        name: "Expert_14",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=4",
        favorite: true),
    Expert(
        name: "Expert_15",
        desc: "desc",
        image: "https://picsum.photos/200/300?random=5",
        favorite: false),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = (MediaQuery.of(context).size.height //screen
            -
            MediaQuery.of(context).padding.top // safe area
            -
            AppBar().preferredSize.height //AppBar
        );



    _buildServices() {
      List<Widget> serviceWidgetList = [];
      serviceList.forEach((Service service) {
        serviceWidgetList.add(
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedService = service.name!;
                print(_selectedService);
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 3,
                            color: _selectedService == service.name
                                ? mysecondarycolor
                                : Colors.transparent),
                      ),
                    ),
                    child: Text(
                      service.name!,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
      return Row(
        children: serviceWidgetList,
      );
    }
    _buildExperts(Expert expert){
      return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedExpert = expert.name!;
                      print(_selectedExpert);
                    });
                  },
                  child:Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: myprimercolor,width: 2),
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                // height: height,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(35),
                                  child: Image(
                                    image:NetworkImage(expert.image!),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(expert.name!,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    // fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),

                        Positioned(
                          top: 0,
                          left: 0,
                          child:
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                expert.favorite = expert.favorite!? false: true;
                                print(_selectedExpert);
                              });
                            },
                            child:ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular( 30.0),bottomRight: Radius.circular( 15.0)),
                              child: Container(
                                color: myprimercolor,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon( expert.favorite!? Icons.favorite : Icons.favorite_border,
                                   color: Colors.white
                                   , size: 25,),
                                ),
                              ),
                            ),
                          ),
                          // ElevatedButton(
                          //   child: Icon( expert.favorite!? Icons.favorite : Icons.favorite_border,
                          //     color: mysecondarycolor
                          //     , size: 35,),
                          //   style: ElevatedButton.styleFrom(
                          //     shape: CircleBorder(),
                          //     padding: EdgeInsets.all(5),
                          //     backgroundColor: Colors.white, // <-- Button color
                          //     // foregroundColor: Colors.red, // <-- Splash color
                          //   ),
                          //   onPressed: () {
                          //     setState(() {
                          //       expert.favorite = expert.favorite!? false: true;
                          //     });
                          //   },
                          // ),
                        ),
                      ],
                    ),
                  )
                );
    }
    // _buildExperts() {
    //   List<Widget> expertWidgetList = [];
    //   expertList.forEach((Expert expert) {
    //     expertWidgetList.add(
    //       GestureDetector(
    //         onTap: () {
    //           setState(() {
    //             _selectedExpert = expert.name!;
    //             print(_selectedExpert);
    //           });
    //         },
    //         child: Padding(
    //           padding: const EdgeInsets.all(10),
    //           child: Column(
    //             children: [
    //               Container(
    //                 decoration: BoxDecoration(
    //                   border: Border(
    //                     bottom: BorderSide(
    //                         width: 3,
    //                         color: _selectedExpert == expert.name
    //                             ? mysecondarycolor
    //                             : Colors.transparent),
    //                   ),
    //                 ),
    //                 child: Text(
    //                   expert.name!,
    //                   style: TextStyle(
    //                       fontSize: 18,
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   });
    //   return Column(
    //     children: expertWidgetList,
    //   );
    // }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Player Audio Screen"),
      // ),
      body: Column(
        children: [
          Container(
            // height: bodyHeight * 0.40,
            width: screenWidth,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                // border: Border.all(color: Colors.grey),
                gradient: LinearGradient(
                  colors: [Color(0xff023056), myprimercolor],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      // Top
                      Container(
                        width: screenWidth,
                        height: bodyHeight * 0.10,
                        child: Center(
                          child: Text(
                            "Experts",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: mysecondarycolor),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          top: 15,
                        ),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.favorite,
                            color: mysecondarycolor,
                            size: 35,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(5),
                            backgroundColor: Colors.white, // <-- Button color
                            // foregroundColor: Colors.red, // <-- Splash color
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: _buildServices(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Expanded(
          //   child:Padding(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          //         child: _buildExperts()),
          //   ),
          Expanded(
            child: GridView.count(
                padding: EdgeInsets.all(10.0),
                crossAxisCount: 2,
                children:
                List.generate(expertList.length,
                        (index)  {
                      Expert expert= expertList[index];
                      return _buildExperts(expert);
                    }
                )
            ),
          )

        ],
      ),
    );
  }
}

class Service {
  String? name;
  String? desc;
  String? image;
  bool? favorite;

  Service({this.name, this.desc, this.image, this.favorite});
}

class Expert {
  String? name;
  String? desc;
  String? image;
  bool? favorite;

  Expert({this.name, this.desc, this.image, this.favorite});
}
