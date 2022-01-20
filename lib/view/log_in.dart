import 'package:flutter/material.dart';
import 'package:like_zocdoc/config/app_colors.dart';
import 'package:like_zocdoc/view/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: kPrimaryColorYellow,
          // leading: const Icon(
          //   Icons.arrow_back,
          //   color: Colors.black,
          // ),

          // title: Container(
          //   color: Colors.white,
          //   width: width * 0.7,
          //   height: width * 0.1,
          //   child: Row(
          //     children: [
          //       SizedBox(
          //         width: width * 0.01,
          //       ),
          //       const Icon(
          //         Icons.search,
          //         color: Colors.black,
          //       ),
          //       SizedBox(
          //         width: width * 0.01,
          //       ),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: const [
          //           Text(
          //             "Illness",
          //             style: TextStyle(color: Colors.black, fontSize: 10),
          //           ),
          //           Text(
          //             "New York, NY, USA",
          //             style: TextStyle(color: Colors.black, fontSize: 10),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // actions: [
          //   Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Padding(
          //           padding: EdgeInsets.only(right: width * 0.05),
          //           child: GestureDetector(
          //             onTap: () {},
          //             child: const Text(
          //               "Map",
          //               style: TextStyle(
          //                   color: Colors.black, fontWeight: FontWeight.bold),
          //             ),
          //           )),
          //     ],
          //   ),
          // ],
        ),
        body: Center(
          child: SizedBox(
            width: width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColorText,
                      fontSize: width * 0.07),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  "Log in to view and manage your appointments",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: kPrimaryColorText,
                      fontSize: width * 0.06),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => const Home()));
                  },
                  child: Container(
                    color: Colors.yellow,
                    height: height * 0.07,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Image.asset(
                          "assets/icons8-google-48.png",
                          height: width * 0.1,
                          width: width * 0.1,
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                              fontSize: width * 0.05, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  color: const Color(0xff89aaf0),
                  height: height * 0.07,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Image.asset(
                        "assets/icons8-facebook-48.png",
                        height: width * 0.1,
                        width: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            fontSize: width * 0.05, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kPrimaryColorText,
                    ),
                  ),
                  height: height * 0.07,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Icon(
                        Icons.email_outlined,
                        size: width * 0.1,
                      ),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      Text(
                        "Log in with email",
                        style: TextStyle(
                            fontSize: width * 0.05, color: kPrimaryColorText),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                                color: kPrimaryColorText,
                                fontSize: width * 0.045)),
                        TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColorFirozi,
                                fontSize: width * 0.045)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
