import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartpocket_app/features/home/Main_Menu_page.dart';


class Payfees extends StatefulWidget {
  const Payfees({super.key});

  @override
  State<Payfees> createState() => _PayfeesState();
}

class _PayfeesState extends State<Payfees> {
  String? _selectedStudent;

  final List<String> _studentList = [
    'Mary Banda',
    'Jose Manda',
    'Chifkeef',
    'Monica Phiri',
  ];

  String? _selectedTerm;

  final List<String> _termList = [
    'Term 1',
    'Term 2',
    'Term 3',
  ];

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
                  'assets/images/pay-card.svg',
                  height: 60,
                  color: Color(0xFF00DB8B),
                ),

                SizedBox(height: 10),

                Text(
                  'Pay Fees',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'Make payments for school fees',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: 65),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hint: Text('Select Student',style: GoogleFonts.poppins(color: Colors.white),),
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
                  dropdownColor: Colors.black, // Optional: dark dropdown background
                  style: GoogleFonts.poppins(color: Colors.white), // Text inside dropdown
                  iconEnabledColor: Color(0xFF00DB8B), // Dropdown icon color
                  value: _selectedStudent,
                  items: _studentList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: GoogleFonts.poppins(color: Colors.white), // Style each item
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedStudent = newValue!;
                    });
                  },
                ),

                SizedBox(height: 28),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hint: Text('Select Term',style: GoogleFonts.poppins(color: Colors.white),),
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
                  dropdownColor: Colors.black, // Optional: dark dropdown background
                  style: GoogleFonts.poppins(color: Colors.white), // Text inside dropdown
                  iconEnabledColor: Color(0xFF00DB8B), // Dropdown icon color
                  value: _selectedTerm,
                  items: _termList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w400), // Style each item
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedTerm = newValue!;
                    });
                  },
                ),


                SizedBox(height: 28),

                TextFormField(style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w200),
                  decoration: InputDecoration(
                    hintText: 'Enter Amount',
                    hintStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w200),// move this here
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
                        'Pay Fees',
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
