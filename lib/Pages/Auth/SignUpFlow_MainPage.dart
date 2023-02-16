import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thunder_bird/Constants/Placeholders.dart';
import 'package:thunder_bird/Pages/Auth/OnBoardingForm.dart';

import 'SignUpFlow_Widgets.dart';

String tempVar = 'aaa';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          bigAirplane,
          Positioned(top: 5, left: 20, child: airplaneLogo),
          Positioned(bottom: 20, right: 40, child: versionLogo),
          const Center(
            child: SignUpForm(),
          )
        ],
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BorderedContainer(
        padding: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                theTitle("SIGNUP"),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    fieldTitle("Name"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        BorderedField(
                          label: "FIRST",
                          width: 120,
                          onChanged: (value) {
                            updateFirstName(value);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field Required";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        BorderedField(
                          label: "LAST",
                          width: 120,
                          onChanged: (value) {},
                          validator: (value) {
                            return null;
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    fieldTitle("Enter your email"),
                    const SizedBox(
                      height: 10,
                    ),
                    BorderedField(
                        label: "EMAIL",
                        width: 250,
                        onChanged: (value) {},
                        validator: (value) {
                          return null;
                        }),
                    const SizedBox(
                      height: 7,
                    ),
                    fieldTitle("Create a password"),
                    const SizedBox(
                      height: 10,
                    ),
                    BorderedField(
                        label: "PASSWORD",
                        width: 250,
                        onChanged: (value) {},
                        validator: (value) {
                          return null;
                        }),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                theButton(() {
                  print(firstName);
                  formKey.currentState!.validate() ? Get.to(const OnBaordingForm()) : null;
                })
              ],
            ),
          ),
        ));
  }

  fieldTitle(text) {
    return Text(
      text,
      style: GoogleFonts.inter(fontSize: 10, color: Colors.black),
    );
  }

  theTitle(text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: GoogleFonts.inter(fontWeight: FontWeight.w800, fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }

  theButton(Function fun) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FormButton(
            name: "CONTINUE",
            onPressed: () {
              fun();
            })
      ],
    );
  }
}
