import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: (){
        setState(() {
          selectedIndex = index;
        });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0XFF1D1E3C),
                fontWeight: selectedIndex == index ? FontWeight.w500 : FontWeight.w300
            ),),
            Container(
              width: 70,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectedIndex == index ? Color(0XFFFE998D) : Colors.transparent
              ),
            )
          ],
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("images/background.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("images/ic_logo.png", width: 100, height: 50,),
                    Row(
                      children: [
                        navItem(title: "Guides", index: 0),
                        SizedBox(width: 50,),
                        navItem(title: "Pricing", index: 1),
                        SizedBox(width: 50,),
                        navItem(title: "Team", index: 2),
                        SizedBox(width: 50,),
                        navItem(title: "Stories", index: 3),
                      ],
                    ),
                    Image.asset("images/btn_my_account.png", width: 160, height: 50,),
                  ],
                ),
                SizedBox(height: 75,),
                Image.asset("images/illustration.png", width: 550,),
                SizedBox(height: 85,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.download_rounded, size: 25, color: Color(0XFFFE998D), ),
                    SizedBox(width: 10,),
                    Text("Scroll to Learn More", style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w300
                    ),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
