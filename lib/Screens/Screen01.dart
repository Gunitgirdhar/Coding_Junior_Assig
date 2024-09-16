import 'package:flutter/material.dart';

import 'Screen_02.dart';

// How Code is Working- by Gunit
// -> First we have made our appbar
//-> The using card we have made our student Section
//-> Then we have stored data in a lista nd using the listView.buider we traversed the list and made using ListTile
// Then made the bottom navigation Bar
class CourseDetailsPage extends StatelessWidget {
  final List<Map<String, dynamic>> videoLessons = [
    {'title': 'Introduction', 'duration': '3h 30min', 'locked': true},
    {'title': 'Install Software', 'duration': '1h 30min', 'locked': true},
    {'title': 'Learn Tools', 'duration': '2h 30min', 'locked': true},
    {'title': 'Tracing Sketsa', 'duration': '1h 30min', 'locked': true},
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Details'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Notification action
                },
              ),
            ),
          ),
        ],
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Our Student Card Section
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Student',
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img_01.jpeg')),
                          SizedBox(width: 10),
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img_022.jpeg')),
                          SizedBox(width: 10),
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img_033.jpeg')),
                          SizedBox(width: 10),
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/img_05.jpeg')),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Photoshop Editing Course',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.play_circle_outline),
                              SizedBox(width: 5),
                              Text('30 Lessons'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.access_time),
                              SizedBox(width: 5),
                              Text('13h 30min'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Video Lessons Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Video',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: videoLessons.length,
                itemBuilder: (context, index) {
                  final videoLesson = videoLessons[index];
                  final mediaQuery = MediaQuery.of(context);
                  final iconSize = mediaQuery.size.width * 0.1;
                  print("ICONS SIZE");
                  print(iconSize);
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                        leading: Container(
                          height: iconSize,
                          width: iconSize,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              )),
                          child: Icon(
                            videoLesson['locked']
                                ? Icons.lock
                                : Icons.play_arrow,
                            color: Colors.grey,
                          ),
                        ),
                        title: Text(videoLesson['title']),
                        subtitle: Text(videoLesson['duration']),
                        trailing: Container(
                          height: iconSize * 1.1,
                          width: iconSize * 3.4,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.arrow_forward_ios_rounded),
                                radius: 13,
                                backgroundColor: Color(0xFFb9dd6b),
                              ),
                              Text(
                                "Play Video",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              )
                              // Container(
                              //   child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,)),
                              //   decoration: BoxDecoration(
                              //     shape: BoxShape.circle,
                              //     color: Colors.green
                              //   ),
                              // )
                            ],
                          ),
                        )
                        //
                        // ElevatedButton(
                        //   onPressed: () {
                        //     // Play video action
                        //   },
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: Colors.green[100],
                        //     foregroundColor: Colors.green,
                        //   ),
                        //   child: Text('Play Video'),
                        // ),
                        ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.08,
              child: ElevatedButton(
                onPressed: () {
                  // Enroll action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFb9dd6b),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Icon(
                  Icons.add_business_sharp,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.08,
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.01),
                child: ElevatedButton(
                  onPressed: () {
                    // Enroll action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFb9dd6b),
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * 0.7,
                      MediaQuery.of(context).size.height * 0.07,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'Enroll Now',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResponsivePage(),
            ));
      },
      child: Icon(Icons.arrow_forward_ios_rounded),),
    );
  }
}
