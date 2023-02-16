import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thunder_bird/Constants/Constants.dart';
import 'package:thunder_bird/Pages/Auth/SignUpFlow_MainPage.dart';
import 'package:thunder_bird/Pages/Auth/SignUpFlow_Widgets.dart';

import '../Home/DashBoard_MainPage.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            child: LoginForm(),
          )
        ],
      ),
    );
  }
}

//---------------------- Login Form --------------------------------------------------------------->
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BorderedContainer(
        padding: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 45),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginField(
                  title: "Username",
                  hint: "Type Your Email",
                  icon: emailIcon,
                  obscure: false,
                  onChanged: (value) {},
                  validator: (value) {
                    if (RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                      return null;
                    } else {
                      return "Enter Valid Email Address";
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                LoginField(
                  title: "Password",
                  hint: "Type Your Password",
                  icon: passwordIcon,
                  obscure: true,
                  onChanged: (value) {},
                  validator: (value) {
                    if (value!.length < 4) {
                      return "Password mininmum 4 chars";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 135,
                    ),
                    Text(
                      "Forgot password?",
                      style: GoogleFonts.inter(fontSize: 10, color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                FormButton(
                    name: "LOGIN",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(const Dashboard());
                      }
                    }),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Or sign up with",
                  style: GoogleFonts.inter(fontSize: 10, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    googleIcon,
                    const SizedBox(
                      width: 10,
                    ),
                    appleIcon
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Obx(
                  () => InkWell(
                    onTap: () {
                      Get.to(const SignUp());
                    },
                    onHover: (value) {
                      value ? ui.setsuHover() : ui.removesuHover();
                    },
                    child: Text(
                      "SIGNUP",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          color: ui.suHover.value ? Colors.grey : Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
//---------------------- Login Form Widgets --------------------------------------------------------------->

class LoginField extends StatelessWidget {
  final String title;
  final String hint;
  final Image icon;
  final bool obscure;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;

  const LoginField({
    super.key,
    required this.title,
    required this.hint,
    required this.onChanged,
    required this.validator,
    required this.icon,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 12),
        ),
        SizedBox(
          width: 220,
          child: TextFormField(
            obscureText: obscure ? true : false,
            style: GoogleFonts.inter(fontSize: 12, color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: Padding(padding: const EdgeInsets.only(right: 10), child: icon),
              prefixIconConstraints: const BoxConstraints(maxHeight: 14),
              hintText: hint,
              enabledBorder:
                  const UnderlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.black)),
              focusedBorder:
                  const UnderlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.black)),
              hintStyle: GoogleFonts.inter(fontSize: 12, color: Colors.black),
              errorBorder:
                  const UnderlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.red)),
              focusedErrorBorder:
                  const UnderlineInputBorder(borderSide: BorderSide(width: 2, color: Colors.red)),
            ),
            onChanged: onChanged,
            validator: validator,
          ),
        ),
      ],
    );
  }
}
