import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Expanded(
              child: _buildHeader(),
              flex: 1,
            ),
            Expanded(
              child: _buildFrom(),
              flex: 2,
            ),
          ],
        ),
      );
    });
  }

  // header
  Widget _buildHeader() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 57,
            width: 60,
            // color: Colors.white,
            child: Image.asset("assets/images/logo_vai.jpeg"),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            "Let's Sign You In",
            style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
                height: 22 / 19),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome back, you've been missed!",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    );
  }

  // 表单
  Widget _buildFrom() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.fromLTRB(20, 40, 20, 35),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(35)),
      child: Column(
        children: [
          // Username or E-Mail
          InputButton(
            "Username or E-Mail",
            "google@google.com",
            (value) {
              // setState(() {
              //   isUserNameValid = value.isNotEmpty && value.length > 0;
              // });

              controller.email = value.trim();
            },
            prefixIcon: Icon(Icons.supervised_user_circle_sharp),
            suffixIcon: controller.isUserNameValid
                ? Icon(Icons.check)
                : Icon(Icons.error_outline),
          ),
          SizedBox(
            height: 36,
          ),
          // Password
          InputButton("Password", "*************", (value) {
            controller.password = value.trim();
          }, prefixIcon: Icon(Icons.lock_open_outlined)),
          SizedBox(
            height: 36,
          ),
          // Sign In
          Container(
            height: 57,
            width: 309,
            child: ElevatedButton(
              onPressed: () {
                if (controller.email.length < 4 ||
                    controller.password.length < 6) {
                  Get.dialog(AlertDialog(
                    title: Text('错误'),
                    content: Text('请检查🧐是否填写正确'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Text('OK'),
                      ),
                    ],
                  ));
                  return;
                }

                controller.subFrom();
              },
              child: Text(
                controller.isLogin ? "Sign In" : "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(1),
                // maximumSize: MaterialStateProperty.all(Size.zero),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
          ),
          SizedBox(
            height: 16,
          ),
          // Don't have an account ?
          controller.isLogin
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an accoun? "),
                    GestureDetector(
                      onTap: () {
                        controller.changeLoginStatus();
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login accoun? "),
                    GestureDetector(
                      onTap: () {
                        controller.changeLoginStatus();
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}

Widget InputButton(String title, String context, ValueChanged<String> onChange,
    {Widget? prefixIcon, Widget? suffixIcon}) {
  return Container(
    // color: Colors.cyanAccent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Color(0xff838383)),
        ),
        TextField(
          onChanged: (value) {
            onChange(value);
          },
          decoration: InputDecoration(
            hintText: context,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffixIconColor: Colors.green,
          ),
        ),
      ],
    ),
  );
}
