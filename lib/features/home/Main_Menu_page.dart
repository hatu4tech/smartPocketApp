import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartpocket_app/features/account/account_page.dart';
import 'package:smartpocket_app/features/auth/login/Login_page.dart';
import 'package:smartpocket_app/features/deposit/deposit.dart';
import 'package:smartpocket_app/features/fees/payfees.dart';
import 'package:smartpocket_app/features/send_money/send_money.dart';


class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AccountPage(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/images/Reconsider.jpg",
                          ), // Replace with your image
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'K.O',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ],
                  ),
                  InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                    child: SvgPicture.asset(
                      'assets/images/notificationbell.svg',
                      height: 40,
                      color: Color(0xFF00DB8B),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              /// WELCOME TEXT
              Text(
                'Welcome back',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              /// GREEN BALANCE CARD
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF0A7F5C), // lighter shade for top highlight
                      Color(0xFF005C3D), // base color
                      Color(0xFF00382A), // darker shade for depth
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Balance',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'ZMW 3,200.00',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 136,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Account Number',
                                style: GoogleFonts.poppins(
                                  color: Colors.white70,
                                  fontSize: 8,
                                ),
                              ),
                              Text(
                                '**** 3456',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 136,
                          padding: EdgeInsets.symmetric(
                            horizontal: 7,
                            vertical: 4,
                          ),
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Valid Until',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '06/25',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Secured by SmartPocket',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.greenAccent,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Online',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              /// QUICK ACTIONS TEXT
              Text(
                'Quick Actions',
                style: GoogleFonts.poppins(color: Colors.white),
              ),

              SizedBox(height: 10),

              /// GRID OF ACTION BUTTONS
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Deposit()),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF000000),
                              Color(0xFD070707),
                              Color(0xFF070707),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF00301E),
                              offset: Offset(0, 0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/depositMoney.svg',
                              height: 29,
                              color: Color(0xFF00DB8B),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Deposit',
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SendMoney()),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF000000),
                              Color(0xFD070707),
                              Color(0xFF070707),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF00301E),
                              offset: Offset(0, 0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/sendmoney.svg',
                              height: 29,
                              color: Color(0xFF00DB8B),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Send Money',
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF000000),
                              Color(0xFD070707),
                              Color(0xFF070707),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF00301E),
                              offset: Offset(0, 0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/lock_keyhole.svg',
                              height: 29,
                              color: Color(0xFF00DB8B),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Lock',
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payfees()),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF000000),
                              Color(0xFD070707),
                              Color(0xFF070707),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF00301E),
                              offset: Offset(0, 0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/credit-card.svg',
                              color: Color(0xFF00DB8B),
                              height: 29,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Pay Fees',
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF000000),
                              Color(0xFD070707),
                              Color(0xFF070707),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF00301E),
                              offset: Offset(0, 0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/loan.svg',
                              color: Color(0xFF00DB8B),
                              height: 29,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Loan',
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF000000),
                              Color(0xFD070707),
                              Color(0xFF070707),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF00301E),
                              offset: Offset(0, 0),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/multiaccount.svg',
                              color: Color(0xFF00DB8B),
                              height: 29,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Multi Accounts',
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // buildActionButton(Icons.account_balance_wallet, 'Deposit'),
                    // buildActionButton(Icons.send, 'Send Money'),
                    // buildActionButton(Icons.lock, 'Lock'),
                    // buildActionButton(Icons.school, 'Pay Fees'),
                    // buildActionButton(Icons.account_balance, 'Loan'),
                    // buildActionButton(Icons.group, 'Multi Accounts'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Widget buildActionButton(IconData icon, String label) {
//   return Container(
//       decoration: BoxDecoration(
//         color: Colors.black,
//         border: Border.all(color: Colors.greenAccent),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: Colors.greenAccent),
//             SizedBox(height: 6),
//             Text(label,
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.poppins(
//                     fontSize: 12, color: Colors.greenAccent)),
//           ]
//       )
//   );
// }
}
