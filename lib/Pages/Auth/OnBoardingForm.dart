import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thunder_bird/Constants/Placeholders.dart';
import 'package:thunder_bird/Pages/Tools/PR_Evaluation_Tool.dart';

import '../../Constants/Constants.dart';
import 'SignUpFlow_Widgets.dart';

class OnBaordingForm extends StatelessWidget {
  const OnBaordingForm({super.key});

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
                child: onBoardPrgressBar(),
              )),
          const Center(
            child: OnboardInfoForm(),
          ),
        ],
      ),
    );
  }
}

class OnboardInfoForm extends StatelessWidget {
  const OnboardInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderedContainer(
      padding: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Enter the following information.",
              style: GoogleFonts.inter(
                  fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              nameIcon,
              const SizedBox(
                width: 10,
              ),
              BorderedField(
                  label: "NAME",
                  width: 200,
                  onChanged: (value) {},
                  validator: (value) {
                    return null;
                  }),
              const SizedBox(
                width: 15,
              ),
              companyIcon,
              const SizedBox(
                width: 10,
              ),
              BorderedField(
                  label: "COMPANY",
                  width: 200,
                  onChanged: (value) {},
                  validator: (value) {
                    return null;
                  })
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 3,
              ),
              jobTiltleIcon,
              const SizedBox(
                width: 10,
              ),
              BorderedField(
                  label: "JOB TITLE",
                  width: 200,
                  onChanged: (value) {},
                  validator: (value) {
                    return null;
                  }),
              const SizedBox(
                width: 15,
              ),
              infoemailIcon,
              const SizedBox(
                width: 10,
              ),
              BorderedField(
                  label: "EMAIL",
                  width: 200,
                  onChanged: (value) {},
                  validator: (value) {
                    return null;
                  })
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.black,
            height: 1.5,
            width: 490,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("What functions are you Interesested in Using? (Select all that apply.)",
              style: GoogleFonts.inter(
                  fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            height: 120,
            child: ListView.builder(
              itemCount: choiceList.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => InkWell(
                    onTap: () {
                      ui.boxes[index] == emptybox ? ui.activateBox(index) : ui.deactivateBox(index);
                    },
                    child: choiceTile(ui.boxes[index], choiceList[index]['text']),
                  ),
                );
              },
            ),
          ),
          FormButton(
              name: "NEXT",
              onPressed: () {
                Get.to(const PREvalTool());
              })
        ],
      ),
    );
  }

  choiceTile(icon, text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Text(text,
              style:
                  GoogleFonts.inter(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}

onBoardPrgressBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      blackSquare,
      const SizedBox(
        width: 10,
      ),
      whiteSquare,
      const SizedBox(
        width: 10,
      ),
      whiteSquare
    ],
  );
}
