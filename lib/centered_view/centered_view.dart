import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  CenteredView({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 30,
        bottom: 30,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blue,
          ],
        ),
      ),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1200,
        ),
        child: child,
      ),
    );
  }
}
