import 'package:cakeapp/widgets/bottom_navigator_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Material(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/welcome.png",
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Find and get \nYour Best ",

                        
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Colors.black,


                        ),
                        children: [
                          TextSpan(
                            text: 'Cake',
                            style: TextStyle(
                              color: Color.fromRGBO(228, 172, 79, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  ),
                  Text(
                    "Find the most delicious cakes with \n the best quality here",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: 255,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(228, 172, 79, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigatorBarScreen(),
                          ),
                        );
                      },
                      child: Text(
                      
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
