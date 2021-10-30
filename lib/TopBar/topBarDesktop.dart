import 'package:flutter/material.dart';
import 'package:my_portfolio/Utilities/constants.dart';
import 'package:my_portfolio/Utilities/theBoxes.dart';

class TopBarDesktop extends StatefulWidget {
  const TopBarDesktop({Key? key}) : super(key: key);

  @override
  _TopBarDesktopState createState() => _TopBarDesktopState();
}

class _TopBarDesktopState extends State<TopBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('images/theWindRises.jpg'),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                height: 350,
                width: double.infinity,
              ),
              Positioned(
                top: 40,
                left: 10,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 67,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Tourney',
                        ),
                      ),
                      Text(
                        'I\'m Sagar!',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 35,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Tourney',
                        ),
                      ),
                      Text(
                        'Fellow Coder',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 36,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Tourney',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => GreenContainer(),
                          //   ),
                          // );
                        },
                        child: Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Contact',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Circular',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Resume',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Circular',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'gitHub',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Circular',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
