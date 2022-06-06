import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_constants.dart';
import 'package:portfolio/model/portfolio_model.dart';
import 'package:portfolio/view/mobile/mobile_about_widget.dart';
import 'package:portfolio/view/mobile/mobile_contact.dart';
import 'package:portfolio/view/mobile/mobile_education.dart';
import 'package:portfolio/view/mobile/mobile_portfolio.dart';

import '../model/profile_model.dart';
import 'common_widget/drawer.dart';
import 'mobile/mobile_main_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  PortFolioModel data = PortFolioModel.fromJson(port);
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
              data: data,
              height: height,
            ),
            MobileAbout(
              data: data,
              height: height,
            ),
            EducationMobile(
              data: data,
              height: height,
            ),
            PortfolioMobile(
              height: height,
            ),
            ContactMobile(
              data: data,
              height: height,
            ),
          ]),
        ));
  }
}
