// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Splash extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF6a4a4a),
//       body: Column(
//         children: [
//           // Centered content (image and text)
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/istockphoto-1353464216-612x612 1 (3).png', // Replace with your image
//                   width: 450,
//                   height: 300,
//                   fit: BoxFit.cover,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                   child: Text(
//                     "Utopia",
//                     style: GoogleFonts.poppins(
//                       textStyle: const TextStyle(
//                         fontSize: 52,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         shadows: [
//                           Shadow(
//                             offset: Offset(4, 4), // Spread the shadow a bit more
//                             blurRadius: 10.0, // Increase blur to spread the shadow more
//                             color: Color.fromARGB(212, 52, 36, 36), // Shadow color with opacity
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // Button at the very bottom with shadow
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: SizedBox(
//               width: 160,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFFebdddd), // Background color
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12), // Rounded corners
//                   ),
//                   padding: const EdgeInsets.symmetric(vertical: 16), // Button height
//                   elevation: 8, // Elevation to create shadow
//                   shadowColor: const Color.fromARGB(235, 0, 0, 0)// Shadow color
//                 ),
//                 onPressed: () {
//                   print("Button pressed!");
//                 },
//                 child: Text(
//                   'Get Started',
//                   style: GoogleFonts.poppins(
//                     textStyle: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black, // Text color
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),

//           // Rounded container below the button
//           const SizedBox(height: 10),
//           Container(
//             width: 60, // Wider than the button
//             height: 3, // Thin rectangle height
//             decoration: BoxDecoration(
//               color: const Color(0xFFebdddd), // Light beige color
//               borderRadius: BorderRadius.circular(12), // Rounded edges
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart'; // Import GetX


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6a4a4a),
      body: Column(
        children: [
          // Centered content (image and text)
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/istockphoto-1353464216-612x612 1 (3).png', // Replace with your image
                  width: 450,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Utopia",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(4, 4), // Spread the shadow a bit more
                            blurRadius: 10.0, // Increase blur to spread the shadow more
                            color: Color.fromARGB(212, 52, 36, 36), // Shadow color with opacity
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Button at the very bottom with shadow
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 160,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFebdddd), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16), // Button height
                  elevation: 8, // Elevation to create shadow
                  shadowColor: const Color.fromARGB(235, 0, 0, 0), // Shadow color
                ),
                onPressed: () {
                  // Use named route for navigation
                  Get.toNamed('/home');
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Rounded container below the button
          const SizedBox(height: 10),
          Container(
         
            width: 150, // Wider than the button
            height: 3, // Thin rectangle height
            decoration: BoxDecoration(
              color: const Color(0xFFebdddd), // Light beige color
              borderRadius: BorderRadius.circular(12), // Rounded edges
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
