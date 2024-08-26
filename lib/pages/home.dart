import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/pages/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                "assets/images/main_top.png",
                width: 125,
              )),
              Positioned(
                child: Image.asset("assets/images/main_bottom.png"),
                bottom: 0,
                width: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "WELCOME",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SvgPicture.asset(
                        "assets/icons/chat.svg",
                      ),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context,"/login"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.purple),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 15.0, horizontal: 100.0),
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: ()  => Navigator.pushNamed(context,"/sign_up"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.purple),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 15.0, horizontal: 91.0),
                          ),
                        ),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
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
