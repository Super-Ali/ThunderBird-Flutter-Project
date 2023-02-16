import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thunder_bird/Constants/Constants.dart';
import 'package:thunder_bird/Pages/Home/Dashboard_Widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      body: LayoutBuilder(builder: (context, constraints) {
        double width = constraints.maxWidth;
        if (width >= largeScreenSize) {
          return Stack(
            fit: StackFit.expand,
            children: [
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SideBar(),
                  const SizedBox(
                    width: 150,
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 100),
                      DBColumn1(),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 180,
                      ),
                      DBColumn2(),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                ],
              ),
              const Positioned(
                right: 40,
                bottom: 0,
                child: VersioLogo(),
              )
            ],
          );
        } else if (width < largeScreenSize && width >= mediumScreenSize) {
          return Row(
            children: [
              const SideBar(),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    Row(
                      children: [
                        Column(
                          children: const [
                            SizedBox(
                              height: 50,
                            ),
                            DBColumn1(),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 130),
                              child: DBColumn2(),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 210),
                              child: VersioLogo(),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              width: 10,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        } else {
          return Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      style:
                          ElevatedButton.styleFrom(backgroundColor: themeGreen),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(Icons.menu),
                      ))
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 25,
                            ),
                            DBColumn1(),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 130),
                              child: DBColumn2(),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 210),
                              child: VersioLogo(),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        }
      }),
      drawer: const Drawer(child: SideBar()),
    );
  }
}

class DBColumn1 extends StatelessWidget {
  const DBColumn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "DASHBOARD",
          style: GoogleFonts.barlowCondensed(
              fontWeight: FontWeight.w700, color: themeGreen, fontSize: 30),
        ),
        const SizedBox(
          height: 45,
        ),
        Text(
          "PROFILE",
          style: GoogleFonts.barlowCondensed(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        const ProfileCard()
      ],
    );
  }
}

class DBColumn2 extends StatelessWidget {
  const DBColumn2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "RESOURCES",
          style: GoogleFonts.barlowCondensed(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        DashboardButton(
            index: 0, name: "Puerto Rico\nEvaluation Tool", onPressed: () {}),
        const SizedBox(
          height: 20,
        ),
        DashboardButton(index: 1, name: "Microgrid Sizing ", onPressed: () {}),
        const SizedBox(
          height: 20,
        ),
        DashboardButton(
            index: 2, name: "Renewable Energy\nIncentives", onPressed: () {}),
        const SizedBox(
          height: 20,
        ),
        DashboardButton(
            index: 3, name: "Airport Transformation\nTool", onPressed: () {}),
      ],
    );
  }
}

class VersioLogo extends StatelessWidget {
  const VersioLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "THUNDERBIRD V1.0",
          style: GoogleFonts.barlowCondensed(
              fontWeight: FontWeight.w700, color: themeGreen, fontSize: 15),
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
