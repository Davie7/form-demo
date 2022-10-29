import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:form_demo/utils/layout.dart';
import 'package:gap/gap.dart';

import '../utils/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>(); // key for form

  final snackBar = SnackBar(
    content: Text('Submitting form'),
    backgroundColor: Colors.black,
    duration: Duration(seconds: 5),
  );
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.transparent,
        elevation: 0,
      ),
      backgroundColor: Styles.bgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: AppLayout.getHeight(40),
            right: AppLayout.getHeight(40),
          ),
          child: Form(
            key: formKey, // key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(
                  AppLayout.getScreenHeight() * 0.04,
                ),
                Text('Here to Get', style: Styles.textStyle),
                Text('Welcomed!', style: Styles.textStyle),
                Gap(
                  AppLayout.getScreenHeight() * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Enter your name';
                    } else {
                      return null;
                    }
                  },
                ),
                Gap(
                  AppLayout.getScreenHeight() * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your phone number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                            .hasMatch(value)) {
                      return 'Enter valid phone number';
                    } else {
                      return null;
                    }
                  },
                ),
                Gap(
                  AppLayout.getScreenHeight() * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your email address',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                            .hasMatch(value)) {
                      return 'Enter valid email address';
                    } else {
                      return null;
                    }
                  },
                ),
                Gap(
                  AppLayout.getScreenHeight() * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sign up',
                      style: Styles.textStyle.copyWith(fontSize: 22),
                    ),
                    NeumorphicButton(
                      child: Icon(
                        Icons.arrow_forward,
                        color: Styles.white,
                      ),
                      margin: EdgeInsets.only(top: AppLayout.getHeight(12)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // check if form data are valid
                          // your process task ahead if all data are valid
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          // _scaffoldKey.currentState!.snackBar();
                        }
                      },
                      style: NeumorphicStyle(
                        color: Styles.blueColor,
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.circle(),
                        border: NeumorphicBorder(
                            isEnabled: true, color: Styles.blueColor),
                      ),
                    ),
                  ],
                ),
                Gap(
                  AppLayout.getScreenHeight() * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign in'),
                    Text('Forgot password'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
