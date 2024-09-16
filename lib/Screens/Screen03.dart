import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(screenWidth * 0.04),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: screenHeight * 0.07),

                      Text(
                        'Payment Success',
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),

                      Text(
                        '\$35.00',
                        style: TextStyle(
                          fontSize: screenWidth * 0.10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1BAA9E),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),

                      Container(
                        padding: EdgeInsets.all(screenWidth * 0.04),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F3F3),
                          borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: screenWidth * 0.07,
                                  child: Image.asset('assets/img_01.jpeg', )
                                ),
                                SizedBox(width: screenWidth * 0.03),
                                Text(
                                  'Christiana Amandla',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),

                            Text(
                              'Adobe Xd Editing Course',
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ID Transcription',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.035,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'TA11231PW',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Invoice Date',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.035,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      'Nov 14, 2023',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),

                      Container(
                        height: screenHeight * 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenWidth * 0.02),
                          color: Colors.black12,
                        ),
                        child: Image.asset('assets/barcode.png', fit: BoxFit.fitWidth),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFb9dd6b),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenWidth * 0.02),
                            ),
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                          ),
                          child: Text(
                            'Done',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.77),
            child: Icon(
              Icons.check_circle,
              color: Color(0xFF1BAA9E),
              size: screenWidth * 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
