import 'package:e_commerce/app_colors/app_colors.dart';
import 'package:e_commerce/components/productDetails/product_details_widget.dart';
import 'package:flutter/material.dart';

import '../../screens/main_screen/main_screen.dart';

class BestSellerWidget extends StatefulWidget {
  const BestSellerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BestSellerWidget> createState() => _BestSellerWidgetState();
}

class _BestSellerWidgetState extends State<BestSellerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const KPhoneWidget(
              imageName: 'images/samsung_s20_ultra.jpg',
              CurrentPrice: '1,047',
              PreviousPrice: '1,500',
              Name: 'Samsung Galaxy s20 Ultra',
            ),
            const KPhoneWidget(
              imageName: 'images/samsung_s20_ultra.jpg',
              CurrentPrice: '300',
              PreviousPrice: '400',
              Name: 'Xiaomi Mi 10 Pro',
            ),
          ],
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const KPhoneWidget(
              imageName: 'images/samsung_s20_ultra.jpg',
              CurrentPrice: '1,047',
              PreviousPrice: '1,500',
              Name: 'Samsung Note 20 Ultra',
            ),
            const KPhoneWidget(
              imageName: 'images/samsung_s20_ultra.jpg',
              CurrentPrice: '300',
              PreviousPrice: '400',
              Name: 'Motorola One Edge',
            ),
          ],
        ),
      ],
    );
  }
}

class KPhoneWidget extends StatelessWidget {
  final String imageName;
  final String CurrentPrice;
  final String PreviousPrice;
  final bool? isFavorites;
  final String Name;
  const KPhoneWidget(
      {Key? key,
      this.isFavorites,
      required this.imageName,
      required this.Name,
      required this.PreviousPrice,
      required this.CurrentPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(7),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductDetails()),
          );
        },
        child: Column(
          //alignment: Alignment.topCenter,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180,
                  width: 160,
                  child: Image(
                    image: AssetImage('$imageName'),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //       shape: const CircleBorder(),
                //       padding: const EdgeInsets.all(5),
                //       primary: Colors.white,
                //       minimumSize: const Size(15, 15)),
                //   child: isFavorites == true
                //       ? const Icon(Icons.favorite,
                //           color: AppColors.OrangeColor, size: 15)
                //       : const Icon(Icons.favorite_border,
                //           color: AppColors.OrangeColor, size: 15),
                // ),
              ],
            ),
            // Positioned(
            //   right: 10,
            //   child:

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$$CurrentPrice',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '\$$PreviousPrice',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  '$Name',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ],
            ),
            //Image.asset('$imageName'),
            //Image.network('$URL'),
          ],
        ),
      ),
    );
  }
}

// class KPhoneWidget extends StatelessWidget {
//   final String imageName;
//   final String CurrentPrice;
//   final String PreviousPrice;
//   final bool? isFavorites;
//   final String Name;
//   const KPhoneWidget(
//       {Key? key,
//       this.isFavorites,
//       required this.imageName,
//       required this.Name,
//       required this.PreviousPrice,
//       required this.CurrentPrice})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         margin: const EdgeInsets.all(7),
//         elevation: 2,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const ProductDetails()),
//             );
//           },
//           child: Stack(alignment: Alignment.topCenter, children: [
//             SizedBox(
//               child: Image(
//                 image: AssetImage('$imageName'),
//                 height: 180,
//                 width: 160,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Positioned(
//               right: 10,
//               child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                       shape: const CircleBorder(),
//                       padding: const EdgeInsets.all(5),
//                       primary: Colors.white,
//                       minimumSize: const Size(15, 15)),
//                   child: isFavorites == true
//                       ? const Icon(Icons.favorite,
//                           color: AppColors.OrangeColor, size: 15)
//                       : const Icon(Icons.favorite_border,
//                           color: AppColors.OrangeColor, size: 15)),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('\$' + CurrentPrice.toString(),
//                           style: const TextStyle(
//                               fontFamily: 'Mark',
//                               fontSize: 18,
//                               fontWeight: FontWeight.w700,
//                               color: AppColors.DarkBlueColor)),
//                       const SizedBox(width: 20),
//                       Text('\$' + PreviousPrice.toString(),
//                           style: TextStyle(
//                               fontFamily: 'Mark',
//                               fontSize: 11,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.grey[400],
//                               decoration: TextDecoration.lineThrough)),
//                     ],
//                   ),
//                   Text('$Name',
//                       style: const TextStyle(
//                           fontFamily: 'Mark',
//                           fontSize: 11,
//                           fontWeight: FontWeight.w700,
//                           color: AppColors.OrangeColor)),
//                 ],
//               ),
//             ),
//           ]),
//         ));
//   }
// }
