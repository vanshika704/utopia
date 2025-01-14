
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 217, 197, 1),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),

                  // Image
                  Image.asset(
                    'assets/istockphoto-1353464216-612x612 1 (3).png',
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 50),

                  // Name Text Field with reduced width
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8, // Set custom width here
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter your full name",
                        prefixIcon: const Icon(Icons.person),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Email Text Field with reduced width
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8, // Set custom width here
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter your email",
                        prefixIcon: const Icon(Icons.email),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(height: 16.0),

                  // Phone Number Text Field 
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8, // Set custom width here
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        hintText: "Enter your phone number",
                        prefixIcon: const Icon(Icons.phone, color: Color.fromARGB(255, 72, 72, 72)),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(height: 25.0),

                  // Signup Button
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/Page3'); // Handle signup action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A2D26),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                    ),
                    child: const Text(
                      "Signup",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Indicator at the bottom of the page
          Align(
            alignment: Alignment.bottomCenter,
            
            child: Container(
              width: screenWidth * 0.50,
              height: 4,
              margin: EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}
