import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.near_me,
            color: Colors.orange,
          ),
        ),
        const Text(
          'Zihuatengo, Gro',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            fontFamily: 'Mark',
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
    );
  }
}
