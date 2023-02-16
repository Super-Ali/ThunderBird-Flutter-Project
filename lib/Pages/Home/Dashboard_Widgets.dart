import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/Constants.dart';

//-----------------SIDEBAR------------------------------------------------------------------------>
class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35, right: 45, top: 1, bottom: 40),
      decoration: const BoxDecoration(
          color: Color.fromARGB(
        255,
        30,
        30,
        30,
      )),
      child: Column(
        children: [
          Image.asset(
            "assets/Images/sidebar_logo.png",
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "DASHBOARD",
            style: GoogleFonts.barlowCondensed(
                fontSize: 20, fontWeight: FontWeight.w700, color: themeGreen),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SETTINGS",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.barlowCondensed(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: themeGreen),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "YOUR ACCOUNT",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.barlowCondensed(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: themeGreen),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//-----------------ProfileCard------------------------------------------------------------------------>
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(
                  0,
                  4,
                ),
                color: Colors.black.withOpacity(.25))
          ]),
      padding: const EdgeInsets.only(left: 35, top: 25, right: 35, bottom: 60),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/Images/profile.png",
                    width: 45,
                    height: 45,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Peterson",
                        softWrap: true,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Edit Profile",
                        softWrap: true,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 8,
                            decoration: TextDecoration.underline),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 242, 242),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            infoItem("Airport Manager",
                                "assets/Icons/jobtitleIcon.svg"),
                            const SizedBox(
                              height: 10,
                            ),
                            infoItem("jpeters123@gmail.com",
                                "assets/Icons/emailIcon.svg")
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            infoItem(
                                "JP Airport", "assets/Icons/airportIcon.svg"),
                            const SizedBox(
                              height: 10,
                            ),
                            infoItemAlt(
                                "+123456789", "assets/Icons/mobileIcon.png")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Container(
            height: 1.5,
            width: 280,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "What Fuctions are you interested in using ?",
                  style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(.5)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  color:
                      const Color.fromARGB(255, 154, 89, 167).withOpacity(.3),
                  child: const Text(
                    "RENEWABLE ENERGY POTENTIAL",
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 9),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  color:
                      const Color.fromARGB(255, 41, 142, 255).withOpacity(.4),
                  child: const Text("MICROGRID SIZING",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 9)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  infoItem(text, icon) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          height: 10,
          width: 10,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.inter(fontSize: 8, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  infoItemAlt(text, icon) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 10,
          height: 10,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.inter(fontSize: 8, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

//-----------------DashBoardButton------------------------------------------------------------------------>
class DashboardButton extends StatelessWidget {
  final int index;
  final String name;
  final Function onPressed;
  const DashboardButton(
      {super.key,
      required this.name,
      required this.onPressed,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      onHover: (value) {
        value ? ui.setHover(index) : ui.removeHover(index);
      },
      child: Obx(
        () => Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
              color: ui.list[index] ? Colors.white : themeGreen,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.black),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ]),
          child: Center(
            child: Text(
              name,
              softWrap: true,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: ui.list[index] ? themeGreen : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
