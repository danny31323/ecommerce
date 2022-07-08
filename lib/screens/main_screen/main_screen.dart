import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 78.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.near_me),
                  ),
                  const Text(
                    'Zihuatengo, Gro',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mark',
                      color: Color.fromARGB(255, 110, 78, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 36.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_drop_down,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Select Category',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Mark',
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
