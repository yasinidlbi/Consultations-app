import 'package:flutter/material.dart';
// import 'package:record/record.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starter_app/mystyle/constantsColors.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  // final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final controller = PageController(viewportFraction: 0.7, keepPage: true);
  List<Service> serviceList = [
    Service(name: "Service_1", desc: "desc", image: "https://picsum.photos/200/300?random=1", favorite: false),
    Service(name: "Service_2", desc: "desc", image: "https://picsum.photos/200/300?random=2", favorite: true),
    Service(name: "Service_3", desc: "desc", image: "https://picsum.photos/200/300?random=3", favorite: false),
    Service(name: "Service_4", desc: "desc", image: "https://picsum.photos/200/300?random=4", favorite: true),
    Service(name: "Service_5", desc: "desc", image: "https://picsum.photos/200/300?random=5", favorite: false),
  ];

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = (MediaQuery.of(context).size.height //screen
        - MediaQuery.of(context).padding.top // safe area
        - AppBar().preferredSize.height //AppBar
    );


    final pages = List.generate(
        serviceList.length,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
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
                            borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image:NetworkImage(serviceList[index].image!),
                                  fit: BoxFit.fitWidth,
                              ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(serviceList[index].name!,
                        style: TextStyle(
                          fontSize: 18,
                          color: myprimercolor,
                          fontWeight: FontWeight.bold
                        ),),
                      )
                    ],
                  ),
                  Positioned(
                    right: 5,
                    bottom: 35,
                    child: ElevatedButton(
                      child: Icon( serviceList[index].favorite!? Icons.favorite : Icons.favorite_border,
                        color: mysecondarycolor
                        , size: 35,),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(5),
                        backgroundColor: Colors.white, // <-- Button color
                        // foregroundColor: Colors.red, // <-- Splash color
                      ),
                      onPressed: () {
                        setState(() {
                          serviceList[index].favorite = serviceList[index].favorite!? false: true;
                        });
                      },
                    ),
                  ),
                ],
              ),
        ));

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Player Audio Screen"),
      // ),
      body: Container(
        color: myprimercolor,
        child: SafeArea(
          child:  Column(
                children: <Widget>[
                  Stack(
                    children: [
                      // Top
                      Container(
                        // height: bodyHeight * 0.25,
                        width: screenWidth,
                        child: Center(
                          child: Image(
                            image: AssetImage("assets/images/logo.png"),
                            height: (bodyHeight * 0.25) ,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15,),
                        child: ElevatedButton(
                          child: Icon(Icons.notifications ,
                              color: myprimercolor
                          , size: 35,),
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
            Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                          color: myprimercolor,
                         child: PageView.builder(
                        controller: controller,
                        // itemCount: pages.length,
                        itemBuilder: (_, index) {
                          return pages[index % pages.length];
                        },
                                           ),
                                   ),
                     ),

            ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: const WormEffect(
                        activeDotColor: mysecondarycolor,
                        dotHeight: 10,
                        dotWidth: 10,
                        type: WormType.thinUnderground,
                      ),
                    ),
                  ),


                ],
              ),
            ),
      ),
    );
  }
}

class Service{
  String? name;
  String? desc;
  String? image;
  bool? favorite;

  Service({this.name, this.desc, this.image, this.favorite});
}