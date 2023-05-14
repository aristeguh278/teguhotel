import 'package:flutter/material.dart';
import '../widgets/HomeAppBar.dart';

class HomeScreen extends StatelessWidget {
  var cat = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Added',
    'Hotels',
    'Restaurants'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            child: HomeAppBar(), preferredSize: Size.fromHeight(90.0)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SingleChildScrollView(
                child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                width: 160,
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        opacity: 0.7,
                                        image:
                                            //city1.jpg
                                            AssetImage(
                                                "images/city${index + 1}.jpg"))),
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.topRight,
                                        child: const Icon(
                                          Icons.bookmark_border_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: const Text('City name',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(children: [
                      for (int i = 0; i < cat.length; i++)
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),

                            //  boxShadow: BoxShadow(
                            //     color: Colors.black26, blurRadius: 4)
                          ),
                          child: Text(
                            cat[i],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )
                    ]),
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage(
                              "images/city${2}.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              // ListView.builder(
              //     // physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Padding(
              //         padding: EdgeInsets.all(15),
              //         child: InkWell(
              //           onTap: () {},
              //           child: Container(
              //             height: 200,
              //             decoration: BoxDecoration(
              //                 color: Colors.black,
              //                 borderRadius: BorderRadius.circular(15),
              //                 image: DecorationImage(
              //                     image: AssetImage(
              //                       "images/city${index + 1}.jpg",
              //                     ),
              //                     fit: BoxFit.cover)),
              //           ),
              //         ),
              //       );
              //     })
            ])),
          ),
        ));
  }
}
