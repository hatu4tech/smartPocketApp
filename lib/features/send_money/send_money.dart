import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartpocket_app/features/home/Main_Menu_page.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xFF181818), Color(0xFF131313), Color(0xFF000000)],
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 80),

                SvgPicture.asset(
                  'assets/images/sendmoney.svg',
                  height: 60,
                  color: Color(0xFF00DB8B),
                ),

                SizedBox(height: 10),

                Text(
                  'Send Money',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Send money to a smart Pocket Card',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: 65),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Amount',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00DB8B)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00DB8B),
                        width: 2,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 28),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number', // move this here
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00DB8B)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00DB8B),
                        width: 2,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 45),

                Container(
                  height: 43,
                  width: 294,
                  decoration: BoxDecoration(
                    color: Color(0xFF009F66),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainMenuPage()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Send Money',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
