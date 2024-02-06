import 'package:authpages/Ui%20Kit/ui.dart';
import 'package:authpages/View/signin_account_page.dart';
import 'package:authpages/View/signup_account_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundPrimary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: MyColors.backgroundColor,
              height: MediaQuery.of(context).size.height / 2,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      "lpy.",
                      style: TextStyle(
                          fontSize: 50,
                          color: MyColors.mainColor1,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 65, left: 65, right: 65, bottom: 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Sign in");
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => SignInAccount(),
                          transitionDuration: Duration(milliseconds: 900),
                          transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                // color: MyColors.mainColor1,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: MyColors.mainColor1, width: 2)),
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: MyColors.mainColor1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => SignUpAccount(),
                          transitionDuration: Duration(seconds: 2),
                          transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                // color: MyColors.mainColor1,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: MyColors.mainColor1, width: 2)),
                            child: Center(
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: MyColors.mainColor1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      Expanded(child: Divider(color: MyColors.textColor,)),
                      SizedBox(width: 10,),
                      Text(
                        "OR",
                        style: TextStyle(
                            fontSize: 16,
                            color: MyColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Divider(color: MyColors.textColor,)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInAccount()));

                  }, child: Text(
                    "Sign in with another account?",
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColors.textColor,
                      ),
                  ),)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
