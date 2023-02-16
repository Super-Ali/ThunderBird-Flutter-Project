import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../Auth/SignUpFlow_Widgets.dart';

//------------------------------------------ First Screen ---------------------------------->
class PREvalTool extends StatelessWidget {
  const PREvalTool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          bigAirplane,
          Positioned(top: 5, left: 20, child: airplaneLogo),
          Positioned(bottom: 20, right: 40, child: versionLogo),
          Positioned(
              left: 0,
              right: 0,
              top: 60,
              child: Center(
                child: onBoardPrgressBar2(),
              )),
          const Center(
            child: InputForm(),
          ),
        ],
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderedContainer(
      padding: 50,
      child: Column(
        children: [
          Text("Enter your average # of flights per day.",
              style: GoogleFonts.inter(
                  fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 40,
          ),
          BorderedField(
              label: "INPUT",
              width: 200,
              onChanged: (value) {},
              validator: (value) {
                return null;
              }),
          const SizedBox(
            height: 40,
          ),
          FormButton(
              name: "NEXT",
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const PREToolPage2(),
                        duration: const Duration(milliseconds: 500)));
              })
        ],
      ),
    );
  }
}

onBoardPrgressBar2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      blackSquare,
      const SizedBox(
        width: 10,
      ),
      blackSquare,
      const SizedBox(
        width: 10,
      ),
      whiteSquare
    ],
  );
}

//------------------------------------------ Second Screen ---------------------------------->

class PREToolPage2 extends StatelessWidget {
  const PREToolPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          bigAirplane,
          Positioned(top: 5, left: 20, child: airplaneLogo),
          Positioned(bottom: 20, right: 40, child: versionLogo),
          Positioned(
              left: 0,
              right: 0,
              top: 60,
              child: Center(
                child: onBoardPrgressBar3(),
              )),
          const Center(
            child: DropDownForm(),
          ),
        ],
      ),
    );
  }
}

class DropDownForm extends StatelessWidget {
  const DropDownForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderedContainer(
      padding: 50,
      child: Column(
        children: [
          Text("Enter the size of planes.",
              style: GoogleFonts.inter(
                  fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 40,
          ),
          Text(".....Drop Downs Here....",
              style: GoogleFonts.inter(
                  fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 40,
          ),
          FormButton(name: "DISABLE BUTTON", onPressed: () {})
        ],
      ),
    );
  }
}

onBoardPrgressBar3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      blackSquare,
      const SizedBox(
        width: 10,
      ),
      blackSquare,
      const SizedBox(
        width: 10,
      ),
      blackSquare
    ],
  );
}
