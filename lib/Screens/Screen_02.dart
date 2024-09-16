import 'package:coding_junior/Screens/Screen03.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: screenWidth * 0.08,
              backgroundImage: AssetImage('assets/img_01.jpeg'),
            ),
            SizedBox(width: screenWidth * 0.04),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Christiana Amandla',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lets Learning to smart',
                  style: TextStyle(
                    fontSize: screenWidth * 0.035,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(Icons.search,
                size: screenWidth * 0.08, color: Colors.grey[700]),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 220,
              child: Card(
                color: Color(0xFFb9dd6b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFd4eba2),
                          borderRadius: BorderRadius.circular(10)),
                      height: screenWidth * 0.15,
                      width: screenWidth * 1.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mathematics Course',
                            style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Color(0xFFb9dd6b),
                                borderRadius: BorderRadius.circular(5)),
                            height: screenWidth * 0.09,
                            width: screenWidth * 0.33,
                            child: Center(
                              child: Row(
                                children: [
                                  Icon(Icons.calendar_today,
                                      size: screenWidth * 0.05,
                                      color: Colors.grey[600]),
                                  SizedBox(width: screenWidth * 0.02),
                                  Text(
                                    '19 Nov,2023',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFd4eba2),
                              radius: 24,
                              child: Center(
                                  child: Icon(
                                Icons.check_circle,
                                color: Color(0xFFb9dd6b),
                                size: 36,
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text('Completed',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05)),
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.06,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                            height: 60,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Colors.lightGreen,
                            )),
                        Row(
                          children: [
                            // Container(
                            //   padding: EdgeInsets.all(10),
                            //   // height: 40,
                            //   // width: 40,
                            //   child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.timer, color: Colors.lightGreen, size: 36,))),
                            //   decoration: BoxDecoration(
                            //     color: Colors.lightGreen.shade100,
                            //     //borderRadius: BorderRadius.circular(12)
                            //     shape: BoxShape.circle
                            //   ),
                            // ),

                            CircleAvatar(
                              backgroundColor: Color(0xFFd4eba2),
                              radius: 24,
                              child: Center(
                                  child: Icon(
                                Icons.timer,
                                color: Color(0xFFb9dd6b),
                                size: 36,
                              )),
                            ),

                            Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text('Hours Spent',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05)),
                                  Text(
                                    '455',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.06,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Course',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: screenHeight * 0.02),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              // color: Colors.pink,
              height: screenHeight * 0.31,
              width: screenHeight * 0.435,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2, // Number of popular courses
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.05),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: screenWidth * 0.4, // Card width
                        //  padding: EdgeInsets.all(screenWidth * 0.04),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Course Image
                            Image.asset(
                              index == 0
                                  ? 'assets/ps_01.jpeg'
                                  : 'assets/ai.jpeg',
                              height: screenHeight * 0.12,
                              width: screenWidth * 0.35,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            // Course Name
                            Text(
                              index == 0
                                  ? 'Photoshop Editing Course'
                                  : 'Illustrator Editing Course',
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      child: Image.asset('assets/img_01.jpeg'),
                                      radius: screenWidth * 0.03,
                                    ),
                                    CircleAvatar(
                                      child: Image.asset('assets/img_01.jpeg'),
                                      radius: screenWidth * 0.03,
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Text(
                                  '+20 Participant',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Divider(
                              color: Colors.grey,
                            ),

                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.orange,
                                    size: screenWidth * 0.04),
                                Text(
                                  '4.8 (230)',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '30 Lessons',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Course',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            Container(
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: screenWidth * 1, // Card width
                    //  padding: EdgeInsets.all(screenWidth * 0.04),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Course Image
                        Image.asset(
                          'assets/xd.jpeg',
                          height: screenHeight * 0.12,
                          width: screenWidth * 0.9,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: screenHeight * 0.01),

                        Text(
                          'Adobe Xd Editing Course',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              Icon(Icons.star,
                                  color: Colors.orange,
                                  size: screenWidth * 0.04),
                              Text(
                                '4.8 (230)',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: Colors.grey[600],
                                ),
                              ),
                              Spacer(),
                              Text(
                                '30 Lessons',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset('assets/img_01.jpeg'),
                                  radius: screenWidth * 0.03,
                                ),
                                CircleAvatar(
                                  child: Image.asset('assets/img_01.jpeg'),
                                  radius: screenWidth * 0.03,
                                ),
                              ],
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Text(
                              '+20 Participant',
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Divider(
                          color: Colors.grey,
                        ),
                        // Rating and Lessons Count
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: screenWidth * 0.07),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: screenWidth * 0.07),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: screenWidth * 0.07),
            label: 'Notify',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: screenWidth * 0.07),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentScreen(),
            ));
      },
        child: Icon(Icons.arrow_forward_ios_rounded),),
    );
  }
}
