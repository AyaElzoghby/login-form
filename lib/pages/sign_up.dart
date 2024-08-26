import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/pages/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  child: Image.asset(
                "assets/images/signup_top.png",
                width: 111,
              )),
              Positioned(
                child: Image.asset("assets/images/login_bottom.png"),
                bottom: 0,
                right: 0.0,
                width: 111,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "SGIN UP",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SvgPicture.asset(
                        "assets/icons/signup.svg",
                        height: 250,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Write Your Mail",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: "Write YourPassword",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.purple),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                                vertical: 13.0, horizontal: 118.0),
                          ),
                        ),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Aready have account?"),
                          SizedBox(
                            width: 2.0,
                          ),
                          GestureDetector( onTap:() => Navigator.pushNamed(context,"/login"),
                            child: Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      
                      SizedBox(
                        width: 280,
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 1,
                              color: Colors.purple,
                            )),
                            Text(
                              "OR",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 1,
                              color: Colors.purple,
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.facebook),
                              iconSize: 40,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.facebook),
                              iconSize: 40,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.facebook),
                              iconSize: 40,
                            ),
                            // Container(
                            //   padding: EdgeInsets.all(5),
                            //   child: SvgPicture.asset(
                            //     "assets/icons/twitter.svg",
                            //     height: 45,
                            //   ),
                            //   decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       color: Colors.blue,
                            //       border:
                            //           Border.all(width: 2, color: Colors.blue)),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.all(5),
                            //   child: SvgPicture.asset(
                            //     "assets/icons/facebook.svg",
                            //     height: 45,
                            //   ),
                            //   decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       color: Colors.blue[700],
                            //       border:
                            //           Border.all(width: 2, color: Colors.blue)),
                            // ),
                            // Container(
                            //   padding: EdgeInsets.all(5),
                            //   child: SvgPicture.asset(
                            //     "assets/icons/google-plus.svg",
                            //     height: 45,
                            //   ),
                            //   decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       color: Colors.blue,
                            //       border:
                            //           Border.all(width: 2, color: Colors.blue)),
                            // )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
