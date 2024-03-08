import 'package:authpages/Ui%20Kit/ui.dart';
import 'package:authpages/View/home_page.dart';
import 'package:authpages/View/signin_account_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpAccount extends StatefulWidget {
  const SignUpAccount({Key? key}) : super(key: key);

  @override
  State<SignUpAccount> createState() => _SignUpAccountState();
}

class _SignUpAccountState extends State<SignUpAccount> {
  @override
  bool showPassword = false;
  bool showPassword2 = false;

  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    final _controller1 = TextEditingController();
    final _controller2 = TextEditingController();


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
                      "Create Your Account",
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
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
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
                    obscureText: showPassword ? true : false,
                    cursorColor: MyColors.mainColor1,
                    cursorHeight: 20,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
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
                      // errorText: error1 == false
                      //     ? null
                      //     : _errorText1,
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
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: _controller2,
                    cursorColor: MyColors.mainColor1,
                    cursorHeight: 20,
                    obscureText: showPassword2 ? true : false,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                      TextStyle(color: MyColors.textColor.withOpacity(0.8)),
                      labelText: 'Confirm your password',
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
                            showPassword2 = !showPassword2;
                          });
                        },
                        child: Icon(
                          showPassword2 ? CupertinoIcons.eye_slash_fill : Icons.remove_red_eye_rounded,
                          color: MyColors.textColor.withOpacity(0.8),
                        ),
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () {
                    print("Sign Up");
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
                              "Sign Up",
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInAccount()));
                      print("Create new account");
                    }, child: Text(
                      "Already have account?",
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
