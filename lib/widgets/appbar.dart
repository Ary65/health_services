import 'package:flutter/material.dart';

class DoctorAppBar extends StatelessWidget {
  const DoctorAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Arif',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: size.width * 0.09,
                ),
              ),
              SizedBox(height: size.height * 0.003),
              Text(
                "Find A Doctor & Specialist easily",
                style: TextStyle(
                    color: Colors.blueGrey[400], fontSize: size.width * 0.036),
              ),
            ],
          ),
          Container(
            height: size.height * 0.06,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  offset: Offset(0, 4),
                  color: Colors.black54,
                ),
              ],
              color: const Color(0xffA295FD),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/images/person.png'),
            ),
          ),
        ],
      ),
    );
  }
}
