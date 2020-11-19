import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> lis = [
    "https://images.unsplash.com/photo-1498837167922-ddd27525d352?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1490818387583-1baba5e638af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=931&q=80",
    "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: .5,
            child: Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: Container(
              height: 40,
              width: 310,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'What are you looking for today?',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),
          Positioned(
            top: 152,
            left: 5,
            right: 5,
            child: Container(
              height: height,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 150.0,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(
                        seconds: 3,
                      ),
                      autoPlayAnimationDuration: Duration(
                        milliseconds: 800,
                      ),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: lis
                        .map(
                          (i) => Builder(
                            builder: (BuildContext context) {
                              return Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width * .95,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 10.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: NetworkImage("$i"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                        .toList(),
                  ),
                  Container(
                    height: 15.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepOrange,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              child: Container(
                                height: 100.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 5.0,
                                  ),
                                ),
                                child: Icon(
                                  Icons.ac_unit,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                            ),
                          ),
                          Text('Combos'),
                        ],
                      ),
                      itemCount: 5,
                    ),
                  ),
                  // Container(
                  //   height: 5.0,
                  //   width: width * .95,
                  //   decoration: BoxDecoration(
                  //     color: Colors.black12,
                  //     borderRadius: BorderRadius.circular(
                  //       5.0,
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: Container(
                  //     height: 30.0,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Row(
                  //           children: [
                  //             Icon(
                  //               Icons.category,
                  //               color: Colors.deepOrange,
                  //             ),
                  //             SizedBox(
                  //               width: 3.0,
                  //             ),
                  //             Text(
                  //               'All Categories',
                  //               style: TextStyle(
                  //                 color: Colors.deepOrange,
                  //                 fontSize: 18.0,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         Ink(
                  //           decoration: BoxDecoration(
                  //             color: Colors.orangeAccent,
                  //             borderRadius: BorderRadius.circular(
                  //               20.0,
                  //             ),
                  //           ),
                  //           child: Container(
                  //             constraints: BoxConstraints(
                  //               maxWidth: 80.0,
                  //             ),
                  //             alignment: Alignment.center,
                  //             child: Text(
                  //               "View All",
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(
                  //                 fontSize: (height / width) * 6,
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   height: 300.0,
                  //   child: GridView.count(
                  //     // physics: NeverScrollableScrollPhysics(),
                  //     crossAxisCount: 3,
                  //     children: [
                  //       Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.all(10.0),
                  //             child: Container(
                  //               height: 100.0,
                  //               width: 100.0,
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 border: Border.all(
                  //                   color: Colors.orangeAccent,
                  //                 ),
                  //               ),
                  //               child: Container(
                  //                 height: 100.0,
                  //                 width: 100.0,
                  //                 decoration: BoxDecoration(
                  //                   color: Colors.orangeAccent,
                  //                   borderRadius:
                  //                       BorderRadius.circular(10.0),
                  //                   border: Border.all(
                  //                     color: Colors.white,
                  //                     width: 5.0,
                  //                   ),
                  //                 ),
                  //                 child: Icon(
                  //                   Icons.ac_unit,
                  //                   color: Colors.white,
                  //                   size: 50.0,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           Text('Combos'),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    height: 5.0,
                    width: width * .95,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(
                        5.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 30.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.category,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                'New Products',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          Ink(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 80.0,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "View All",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: (height / width) * 6,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 400,
                  //   width: width * .98,
                  //   child: Image.network(
                  //     'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 30.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.category,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Text(
                                'On Sale Products',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          Ink(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 80.0,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "View All",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: (height / width) * 6,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              child: Container(
                                height: 100.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 5.0,
                                  ),
                                ),
                                child: Icon(
                                  Icons.ac_unit,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                              ),
                            ),
                          ),
                          Text('Combos'),
                        ],
                      ),
                      itemCount: 5,
                    ),
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.orangeAccent,
                              ),
                            ),
                            child: Container(
                              height: 100.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 5.0,
                                ),
                              ),
                              child: Icon(
                                Icons.ac_unit,
                                color: Colors.white,
                                size: 50.0,
                              ),
                            ),
                          ),
                        ),
                        Text('Combos'),
                      ],
                    ),
                    itemCount: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
