import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class GreenContainer extends StatelessWidget {
  const GreenContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.green,
    );
  }
}

Widget navigationBar(
  Function facebookLauncher,
  Function instagramLauncher,
  Function githubLauncher,
  linkedInLaucher,
) {
  return Container(
    decoration: BoxDecoration(
      gradient: RadialGradient(
        colors: [Colors.blue, Colors.lightBlueAccent],
      ),
    ),
    child: ListView(
      children: [
        Container(
          height: 300,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          // color: Colors.white,
                          ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            5,
                          ),
                          bottomRight: Radius.circular(
                            5,
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          color: Colors.black,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 2,
                                  ),
                                  child: Text(
                                    'Port',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Tourney',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          // color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  // color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 2,
                          ),
                          child: Text(
                            'folio',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Tourney',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  // color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      facebookLauncher();
                      print('facebookLaunched');
                    },
                    iconSize: 22,
                    icon: Icon(
                      FontAwesome.facebook_square,
                    ),
                  ),
                  height: 35,
                  width: 35,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  width: 35,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  // color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Container(
                    child: Center(
                      child: IconButton(
                        iconSize: 22,
                        onPressed: () {
                          instagramLauncher();
                        },
                        icon: Icon(
                          FontAwesome.instagram,
                        ),
                      ),
                    ),
                  ),
                  height: 35,
                  width: 35,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  width: 35,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  // color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Container(
                    child: Center(
                      child: IconButton(
                        iconSize: 22,
                        onPressed: () {
                          githubLauncher();
                        },
                        icon: Icon(
                          FontAwesome.github_alt,
                        ),
                      ),
                    ),
                  ),
                  height: 35,
                  width: 35,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  width: 35,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  // color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                  child: Container(
                    child: Center(
                      child: IconButton(
                        iconSize: 22,
                        onPressed: () {
                          linkedInLaucher();
                        },
                        icon: Icon(
                          FontAwesome.linkedin_square,
                        ),
                      ),
                    ),
                  ),
                  height: 35,
                  width: 35,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 35,
                  width: 35,
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget theMobileApplicationDevelopmentBox() {
  return Stack(
    children: [
      Expanded(
        child: Container(
          height: 200,
          // width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
        ),
      ),
      Text('Sagar'),
    ],
  );
}

Widget theRowNavigationBar(
  Function facebookLauncher,
  Function instagramLauncher,
  Function githubLauncher,
  linkedInLaucher,
) {
  return Container(
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: IconButton(
            onPressed: () {
              facebookLauncher();
              print('facebookLaunched');
            },
            iconSize: 22,
            icon: Icon(
              FontAwesome.facebook_square,
            ),
          ),
          height: 35,
          width: 35,
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: Container(
            child: Center(
              child: IconButton(
                iconSize: 22,
                onPressed: () {
                  instagramLauncher();
                },
                icon: Icon(
                  FontAwesome.instagram,
                ),
              ),
            ),
          ),
          height: 35,
          width: 35,
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: Container(
            child: Center(
              child: IconButton(
                iconSize: 22,
                onPressed: () {
                  linkedInLaucher();
                },
                icon: Icon(
                  FontAwesome.linkedin_square,
                ),
              ),
            ),
          ),
          height: 35,
          width: 35,
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
          child: Container(
            child: Center(
              child: IconButton(
                iconSize: 22,
                onPressed: () {
                  githubLauncher();
                },
                icon: Icon(
                  FontAwesome.github,
                ),
              ),
            ),
          ),
          height: 35,
          width: 35,
        ),
      ],
    ),
  );
}
