import 'package:flutter/material.dart';

class HotSalesWidget extends StatelessWidget {
  const HotSalesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://tec.com.pe/wp-content/uploads/2020/10/1601630546_816497_1601630595_noticia_normal-750x430.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          width: 378,
          height: 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'New',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                ),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.orange, //Color.fromARGB(255, 110, 78, 1),
                  shape: CircleBorder(),
                  minimumSize: const Size(27, 27),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  'Iphone 12',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black, primary: Colors.white),
                  onPressed: () {},
                  child: Text('Buy now!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KSliderElements extends StatelessWidget {
  final Icon icon;
  final String text;
  const KSliderElements({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(
        //   width: 23,
        // ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: icon, //Icon(Icons.phone_android),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.orange, //Color.fromARGB(255, 110, 78, 1),
                shape: CircleBorder(),
                minimumSize: const Size(71, 71),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              '$text',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange),
            ),
          ],
        ),
        SizedBox(
          width: 7,
        ),
      ],
    );
  }
}

// Prep for bloc
//class ModelWidget extends StatelessWidget {
//   const ModelWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.fill,
//           image: AssetImage('images/computer.png'),
//         ),
//       ),
//     );
//   }
// }

class ModelWidget extends StatelessWidget {
  const ModelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/computer.png'),
        ),
      ),
    );
  }
}
