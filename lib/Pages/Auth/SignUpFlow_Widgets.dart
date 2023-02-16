import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Constants/Constants.dart';

//----------------- Small Variable Widgets ------------------------------------------------------------------------>

var bigAirplane = Padding(
  padding: const EdgeInsets.all(60),
  child: Image.asset("assets/Images/greenAirplane.png"),
);

var airplaneLogo = Image.asset(
  "assets/Images/sidebar_logo.png",
  width: 150,
  height: 150,
);

var emailIcon = Image.asset(
  "assets/Icons/emailIcon.png",
  width: 14,
  height: 14,
);

var passwordIcon = Image.asset(
  "assets/Icons/passwordIcon.png",
  width: 14,
  height: 14,
);

var versionLogo = Text(
  "THUNDERBIRD V1.0",
  style: GoogleFonts.barlowCondensed(fontWeight: FontWeight.w700, color: themeGreen, fontSize: 15),
);

var googleIcon = Image.asset(
  "assets/Icons/googleIcon.png",
  width: 22,
  height: 22,
);

var appleIcon = const Icon(
  Icons.apple,
  color: Colors.black,
  size: 31,
);

var nameIcon = Image.asset(
  "assets/Icons/nameIcon.png",
  height: 20,
  width: 20,
);

var companyIcon = SvgPicture.asset("assets/Icons/airportIcon.svg");

var jobTiltleIcon = SvgPicture.asset("assets/Icons/jobtitleIcon.svg");

var infoemailIcon = SvgPicture.asset("assets/Icons/emailIcon.svg");

var whiteSquare = Image.asset(
  "assets/Icons/squareBlack.png",
  width: 60,
  height: 20,
);

var blackSquare = Image.asset(
  "assets/Icons/squareWhite.png",
  width: 60,
  height: 20,
);

var emptybox = Image.asset(
  "assets/Icons/boxEmpty.png",
  width: 15,
  height: 15,
);

var checkedBox = Image.asset(
  "assets/Icons/boxChecked.png",
  width: 15,
  height: 15,
);

//----------------- Re-Usable Components ------------------------------------------------------------------------------->
class BorderedContainer extends StatelessWidget {
  final Widget child;
  final double padding;
  final double? width;
  final double? height;
  const BorderedContainer(
      {super.key, required this.child, required this.padding, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(padding),
              width: width ?? width,
              height: height ?? height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 6,
                        offset: const Offset(
                          0,
                          4,
                        ),
                        color: Colors.black.withOpacity(.25))
                  ],
                  border: Border.all(width: 3.5, color: Colors.black)),
              child: child,
            ),
          ],
        ),
      ],
    );
  }
}

class FormButton extends StatelessWidget {
  final String name;
  final Function onPressed;
  const FormButton({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      onHover: (value) {
        value ? ui.setfbHover() : ui.removefbHover();
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: ui.formButtonhover.value ? Colors.white : themeGreen,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 2,
                  color:
                      ui.formButtonhover.value ? Colors.black.withOpacity(.45) : Colors.transparent)
            ],
          ),
          child: Center(
            child: Text(
              name,
              style: GoogleFonts.inter(
                  letterSpacing: 1,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: ui.formButtonhover.value ? themeGreen : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class BorderedField extends StatelessWidget {
  final String label;
  final double width;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  const BorderedField({
    super.key,
    required this.label,
    required this.width,
    required this.onChanged,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        style: GoogleFonts.inter(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(5)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(5)),
            label: Text(label),
            border: InputBorder.none,
            labelStyle: GoogleFonts.inter(fontSize: 12, color: Colors.grey)),
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
