import 'package:flutter/material.dart';

class TopBarMobile extends StatefulWidget {
  const TopBarMobile({Key? key}) : super(key: key);

  @override
  _TopBarMobileState createState() => _TopBarMobileState();
}

class _TopBarMobileState extends State<TopBarMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              height: 250,
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
                        fontSize: 55,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'Tourney',
                      ),
                    ),
                    Text(
                      'I\'m Sagar!',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'Tourney',
                      ),
                    ),
                    Text(
                      'Fellow Coder',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 21,
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
                    Container(
                      height: 20,
                      width: 80,
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
                            fontSize: 10,
                            fontFamily: 'Circular',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 20,
                      width: 80,
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
                            fontSize: 10,
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
                      height: 20,
                      width: 80,
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
                            fontSize: 10,
                            fontFamily: 'Circular',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
