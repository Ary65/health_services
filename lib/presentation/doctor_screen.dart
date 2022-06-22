import 'package:flutter/material.dart';
import 'package:health_services/constants.dart';
import 'package:health_services/widgets/appbar.dart';
import 'package:health_services/widgets/banner.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //* Screen width == 392
    //* Screen height == 856
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.025),
              const DoctorAppBar(),
              SizedBox(height: size.height * 0.015),
              const DoctorBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
