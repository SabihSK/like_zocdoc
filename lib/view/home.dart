import 'package:flutter/material.dart';
import 'package:like_zocdoc/config/app_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List filter = ["insurance", "sort by", "more filters"];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   shadowColor: Colors.transparent,
        //   backgroundColor: kPrimaryColorYellow,

        // ),

        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: kPrimaryColorYellow,
          // leading: const Icon(
          //   Icons.arrow_back,
          //   color: Colors.black,
          // ),
          title: Container(
            color: Colors.white,
            width: width * 0.7,
            height: width * 0.1,
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.01,
                ),
                const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Illness",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      "New York, NY, USA",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: width * 0.05),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Map",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [Text("All"), Text("In-person")],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  Container(
                    color: const Color(0xfff3f3f3),
                    height: 4,
                    width: width * 0.25,
                  ),
                  Container(
                    color: const Color(0xff07213a),
                    height: 4,
                    width: width * 0.08,
                  ),
                  Container(
                    color: const Color(0xfff3f3f3),
                    height: 4,
                    width: width * 0.22,
                  ),
                  Container(
                    color: const Color(0xfff3f3f3),
                    height: 4,
                    width: width * 0.2,
                  ),
                  Container(
                    color: const Color(0xfff3f3f3),
                    height: 4,
                    width: width * 0.25,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),

              // Padding(
              //   padding: EdgeInsets.only(right: width * 0.2),
              //   child: SizedBox(
              //     height: height * 0.045,
              //     child: Expanded(
              //       child: ListView.builder(
              //         physics: const NeverScrollableScrollPhysics(),
              //         shrinkWrap: true,
              //         itemCount: 3,
              //         scrollDirection: Axis.horizontal,
              //         itemBuilder: (context, index) {
              //           return Row(
              //             children: [
              //               Container(
              //                 decoration: BoxDecoration(
              //                   border: Border.all(
              //                     color: const Color(0xffc0c2c4),
              //                   ),
              //                   borderRadius: const BorderRadius.all(
              //                     Radius.circular(20),
              //                   ),
              //                 ),
              //                 child: Padding(
              //                   padding: EdgeInsets.all(width * 0.02),
              //                   child: Text(filter[index]),
              //                 ),
              //               ),
              //               SizedBox(width: width * 0.02),
              //             ],
              //           );
              //         },
              //       ),
              //     ),
              //   ),
              // ),

              Row(
                children: [
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffc0c2c4),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Text(filter[0]),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffc0c2c4),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Text(filter[1]),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffc0c2c4),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Text(filter[2]),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                color: const Color(0xffe8e6e6),
                height: 1,
                width: width,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: kPrimaryColorText,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today_rounded,
                          color: kPrimaryColorText,
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        const Text(
                          "Tue, Jan 18",
                          style: TextStyle(color: kPrimaryColorText),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: kPrimaryColorText,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                color: const Color(0xffe8e6e6),
                height: 1,
                width: width,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 36.0,
                            child: ClipRRect(
                              child: Image.asset('assets/unknown_person.jpg'),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Dr. Ameer Hmeidan, MD",
                                style: TextStyle(
                                    color: kPrimaryColorText,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              const Text(
                                "Primary Care Doctor",
                                style: TextStyle(
                                  color: kPrimaryColorText,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.005,
                              ),
                              const Text(
                                "104 Delancey St New York, NY 10002",
                                style: TextStyle(
                                  color: Color(0xff8e8e90),
                                ),
                              ),
                              // SizedBox(
                              //   height: height * 0.005,
                              // ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: kPrimaryColorPink,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: ' 4.94',
                                          style: TextStyle(
                                              color: kPrimaryColorPink,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                            text: ' (999)',
                                            style: TextStyle(
                                                color: Color(0xff888a90),
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      // ListView.builder(
                      //   shrinkWrap: true,
                      //   itemCount: 2,
                      //   scrollDirection: Axis.horizontal,
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return Container(
                      //       color: kPrimaryColorYellow,
                      //       width: width * 0.3,
                      //       height: width * 0.13,
                      //       child: const Center(
                      //           child: Text(
                      //         "3:30 pm",
                      //         style: TextStyle(
                      //             color: kPrimaryColorText,
                      //             fontWeight: FontWeight.bold),
                      //       )),
                      //     );
                      //   },
                      // ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.067),
                        child: Row(
                          children: [
                            Container(
                              color: kPrimaryColorYellow,
                              width: width * 0.3,
                              height: width * 0.13,
                              child: const Center(
                                  child: Text(
                                "3:30 pm",
                                style: TextStyle(
                                    color: kPrimaryColorText,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Container(
                              color: kPrimaryColorYellow,
                              width: width * 0.3,
                              height: width * 0.13,
                              child: const Center(
                                  child: Text(
                                "7:00 pm",
                                style: TextStyle(
                                    color: kPrimaryColorText,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        color: const Color(0xffe8e6e6),
                        height: 1,
                        width: width,
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: kPrimaryColorFirozi,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              const Text(
                                "View profile",
                                style: TextStyle(
                                    color: kPrimaryColorFirozi,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                color: kPrimaryColorFirozi,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              const Text(
                                "View all availability",
                                style: TextStyle(
                                    color: kPrimaryColorFirozi,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        color: const Color(0xfff3f3f3),
                        height: 10,
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                    ],
                  );
                },
              ),

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         CircleAvatar(
              //           backgroundColor: Colors.transparent,
              //           radius: 36.0,
              //           child: ClipRRect(
              //             child: Image.asset('assets/unknown_person.jpg'),
              //             borderRadius: BorderRadius.circular(100.0),
              //           ),
              //         ),
              //         SizedBox(
              //           width: width * 0.03,
              //         ),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             const Text(
              //               "Dr. Ameer Hmeidan, MD",
              //               style: TextStyle(
              //                   color: kPrimaryColorText,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               height: height * 0.005,
              //             ),
              //             const Text(
              //               "Primary Care Doctor",
              //               style: TextStyle(
              //                 color: kPrimaryColorText,
              //               ),
              //             ),
              //             SizedBox(
              //               height: height * 0.005,
              //             ),
              //             const Text(
              //               "104 Delancey St New York, NY 10002",
              //               style: TextStyle(
              //                 color: Color(0xff8e8e90),
              //               ),
              //             ),
              //             // SizedBox(
              //             //   height: height * 0.005,
              //             // ),
              //             Row(
              //               children: const [
              //                 Icon(
              //                   Icons.star,
              //                   color: kPrimaryColorPink,
              //                 ),
              //                 Text.rich(
              //                   TextSpan(
              //                     children: [
              //                       TextSpan(
              //                         text: ' 4.94',
              //                         style: TextStyle(
              //                             color: kPrimaryColorPink,
              //                             fontWeight: FontWeight.bold),
              //                       ),
              //                       TextSpan(
              //                           text: ' (999)',
              //                           style: TextStyle(
              //                               color: Color(0xff888a90),
              //                               fontWeight: FontWeight.bold)),
              //                     ],
              //                   ),
              //                 )
              //               ],
              //             )
              //           ],
              //         )
              //       ],
              //     ),
              //     SizedBox(
              //       height: height * 0.03,
              //     ),
              //     // ListView.builder(
              //     //   shrinkWrap: true,
              //     //   itemCount: 2,
              //     //   scrollDirection: Axis.horizontal,
              //     //   itemBuilder: (BuildContext context, int index) {
              //     //     return Container(
              //     //       color: kPrimaryColorYellow,
              //     //       width: width * 0.3,
              //     //       height: width * 0.13,
              //     //       child: const Center(
              //     //           child: Text(
              //     //         "3:30 pm",
              //     //         style: TextStyle(
              //     //             color: kPrimaryColorText,
              //     //             fontWeight: FontWeight.bold),
              //     //       )),
              //     //     );
              //     //   },
              //     // ),
              //     Padding(
              //       padding: EdgeInsets.symmetric(horizontal: width * 0.067),
              //       child: Row(
              //         children: [
              //           Container(
              //             color: kPrimaryColorYellow,
              //             width: width * 0.3,
              //             height: width * 0.13,
              //             child: const Center(
              //                 child: Text(
              //               "3:30 pm",
              //               style: TextStyle(
              //                   color: kPrimaryColorText,
              //                   fontWeight: FontWeight.bold),
              //             )),
              //           ),
              //           SizedBox(
              //             width: width * 0.03,
              //           ),
              //           Container(
              //             color: kPrimaryColorYellow,
              //             width: width * 0.3,
              //             height: width * 0.13,
              //             child: const Center(
              //                 child: Text(
              //               "7:00 pm",
              //               style: TextStyle(
              //                   color: kPrimaryColorText,
              //                   fontWeight: FontWeight.bold),
              //             )),
              //           ),
              //         ],
              //       ),
              //     ),
              //     SizedBox(
              //       height: height * 0.03,
              //     ),
              //     Container(
              //       color: const Color(0xffe8e6e6),
              //       height: 1,
              //       width: width,
              //     ),

              //     SizedBox(
              //       height: height * 0.03,
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Row(
              //           children: [
              //             const Icon(
              //               Icons.person,
              //               color: kPrimaryColorFirozi,
              //             ),
              //             SizedBox(
              //               width: width * 0.02,
              //             ),
              //             const Text(
              //               "View profile",
              //               style: TextStyle(
              //                   color: kPrimaryColorFirozi,
              //                   fontWeight: FontWeight.bold),
              //             )
              //           ],
              //         ),
              //         Row(
              //           children: [
              //             const Icon(
              //               Icons.calendar_today,
              //               color: kPrimaryColorFirozi,
              //             ),
              //             SizedBox(
              //               width: width * 0.02,
              //             ),
              //             const Text(
              //               "View all availability",
              //               style: TextStyle(
              //                   color: kPrimaryColorFirozi,
              //                   fontWeight: FontWeight.bold),
              //             )
              //           ],
              //         ),
              //       ],
              //     ),

              //     SizedBox(
              //       height: height * 0.03,
              //     ),
              //     Container(
              //       color: const Color(0xfff3f3f3),
              //       height: 10,
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
