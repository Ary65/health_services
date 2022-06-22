import 'package:flutter/material.dart';
import 'package:health_services/constants.dart';

class DoctorBanner extends StatelessWidget {
  const DoctorBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: w * 0.94,
          height: h * 0.22,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: w * 0.88, //* 368
                height: h * 0.17, //* 145
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 40,
                      offset: Offset(0, 15),
                      color: kPrimaryDarkColor,
                    )
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff77E2FE),
                      Color(0xff46BDFA),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 1.0,
                            top: 2.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.black54,
                              size: h * 0.1,
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: h * 0.1,
                          ),
                          Icon(
                            Icons.healing,
                            color: Colors.white,
                            size: h * 0.05,
                          ),
                        ],
                      ),
                      SizedBox(width: w * 0.012),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Check Up COVID-19',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: w * 0.055,
                              ),
                            ),
                            SizedBox(height: h * 0.02),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Contains several list of questions to check your physical condition.",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.85),
                                      fontSize: w * 0.033,
                                    ),
                                  ),
                                ),
                                SizedBox(width: w * 0.03),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding: EdgeInsets.all(w * 0.012),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: w * 0.038,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
                height: w * 0.12, //* 392 / .12 == 47
                width: w * 0.12,
                child: Image.asset("assets/images/virus.png")),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: h * 0.035,
                horizontal: w * 0.16,
              ),
              child: SizedBox(
                height: h * 0.06,
                width: w * 0.06,
                child: Image.asset('assets/images/virus.png'),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: h * 0.01,
                horizontal: w * 0.07,
              ),
              child: SizedBox(
                height: h * 0.08,
                width: w * 0.08,
                child: Image.asset('assets/images/virus.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
