import 'package:flutter/material.dart';
import 'package:my_portfolio/course_details/courseDetails.dart';

class MiddleBarWidget extends StatelessWidget {
  const MiddleBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'What I do!',
              style: TextStyle(
                fontFamily: 'Tourney',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                    border: Border.all(),
                  ),
                  child: Column(
                    children: [
                      // Container(
                      //   height: 60,
                      //   width: 60,
                      //   child: Image(
                      //     image: AssetImage('images/appDevelopment1.png'),
                      //   ),
                      // ),
                      Text(
                        'Web Development',
                        style: TextStyle(
                          fontFamily: 'Tourney',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      WebDevelopmentDetails(
                          courseDetails:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  // height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                    border: Border.all(),
                  ),
                  child: Column(
                    children: [
                      // Container(
                      //   height: 60,
                      //   width: 60,
                      //   child: Image(
                      //     image: AssetImage('images/appDevelopment1.png'),
                      //   ),
                      // ),
                      Text(
                        'Mobile Application Development',
                        style: TextStyle(
                          fontFamily: 'Tourney',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      WebDevelopmentDetails(
                        courseDetails:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
