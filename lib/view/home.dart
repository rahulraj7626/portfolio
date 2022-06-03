import 'package:flutter/material.dart';
import 'package:portfolio/view/mobile/mobile_about_widget.dart';
import 'package:portfolio/view/mobile/mobile_contact.dart';
import 'package:portfolio/view/mobile/mobile_education.dart';
import 'package:portfolio/view/mobile/mobile_portfolio.dart';

import 'common_widget/drawer.dart';
import 'mobile/mobile_main_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        key: _scaffoldKey,
        drawer: Drawer(
          child: DrawerList(
            height: height,
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            MobileMainWidget(
              height: height,
            ),
            MobileAbout(
              height: height,
            ),
            EducationMobile(
              height: height,
            ),
            PortfolioMobile(
              height: height,
            ),
            ContactMobile(
              height: height,
            ),
          ]),
        ));
  }
}
