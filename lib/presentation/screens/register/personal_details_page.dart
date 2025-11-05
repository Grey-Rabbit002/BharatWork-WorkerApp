import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({super.key});

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height; // Use double
    final width = MediaQuery.of(context).size.width; // Use double
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: height * 0.1,
            child: Text(
              "Register Yourself!",
              style: GoogleFonts.dmSans(
                fontSize: width * 0.068,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: height * 0.18,
            child: Container(
              color: const Color.fromARGB(255, 250, 220, 220),

              width: width * 0.9,
              height: height * 0.6,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "Personal Details",
                      style: GoogleFonts.dmSans(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Name",
                      style: GoogleFonts.dmSans(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),

                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter your full name',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Gender",
                      style: GoogleFonts.dmSans(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: DropdownButtonFormField<String>(
                        initialValue: selectedGender,
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          border: OutlineInputBorder(),
                        ),
                        items: ['Male', 'Female']
                            .map(
                              (gender) => DropdownMenuItem(
                                value: gender,
                                child: Text(gender),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                    ),
                    Text(
                      "Date of Birth",
                      style: GoogleFonts.dmSans(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'DD/MM/YYYY',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Pincode",
                      style: GoogleFonts.dmSans(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Pincode',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "City",
                      style: GoogleFonts.dmSans(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your City',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "State",
                      style: GoogleFonts.dmSans(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your State',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.1,
            child: Center(
              child: ElevatedButton(onPressed: () {}, child: Text("Next")),
            ),
          ),
        ],
      ),
    );
  }
}
