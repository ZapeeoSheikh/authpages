import 'package:authpages/Ui%20Kit/ui.dart';
import 'package:authpages/View/signup_account_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SignInAccount extends StatefulWidget {
  const SignInAccount({Key? key}) : super(key: key);

  @override
  State<SignInAccount> createState() => _SignInAccountState();
}

class _SignInAccountState extends State<SignInAccount> {
  @override
  bool showPassword = false;

  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    final _controller1 = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: MyColors.backgroundPrimary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lpy.",
                  style: TextStyle(
                      fontSize: 35,
                      color: MyColors.mainColor1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Expanded(child: Divider(color: MyColors.mainColor1,)),
                    SizedBox(width: 10,),
                    Text(
                      "Sign In Your Account",
                      style: TextStyle(
                          fontSize: 16,
                          color: MyColors.mainColor1,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Divider(color: MyColors.mainColor1,)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: _controller,
                    cursorColor: MyColors.mainColor1,
                    cursorHeight: 20,
                    autocorrect: true,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    onChanged: (change) {},
                    // maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    // maxLength: 13,
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                      hintStyle:
                          TextStyle(color: MyColors.textColor.withOpacity(0.8)),
                      labelText: 'Enter your email',
                      labelStyle: TextStyle(
                          color: MyColors.mainColor1.withOpacity(0.5)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(100
                            // .r
                            ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: MyColors.mainColor1),
                        borderRadius: new BorderRadius.circular(100
                            // .r
                            ),
                      ),
                      // errorText: error1 == false
                      //     ? null
                      //     : _errorText1,
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2
                              // .sp
                              )),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: MyColors.mainColor1.withOpacity(0.5),
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: _controller1,
                    cursorColor: MyColors.mainColor1,
                    cursorHeight: 20,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    obscureText: showPassword ? true : false,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: MyColors.textColor.withOpacity(0.8)),
                      labelText: 'Enter your password',
                      labelStyle: TextStyle(
                          color: MyColors.mainColor1.withOpacity(0.5)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: new BorderRadius.circular(100
                            // .r
                            ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: new BorderSide(color: MyColors.mainColor1),
                        borderRadius: new BorderRadius.circular(100
                            // .r
                            ),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2
                              // .sp
                              )),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: MyColors.mainColor1.withOpacity(0.5),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Icon(
                          showPassword ? CupertinoIcons.eye_slash_fill : Icons.remove_red_eye_rounded,
                          color: MyColors.textColor.withOpacity(0.8),
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () {
                    print("Sign in");
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: MyColors.mainColor1,
                              borderRadius: BorderRadius.circular(25),
                              // border: Border.all(
                              //     color: , width: 2)
                          ),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: MyColors.backgroundPrimary,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpAccount()));
                    }, child: Text(
                      "Create new account?",
                      style: TextStyle(
                        fontSize: 15,
                        color: MyColors.mainColor1.withOpacity(0.5),
                      ),
                    ),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
