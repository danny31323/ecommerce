import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/app_colors/app_colors.dart';
import 'package:e_commerce/components/text.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 78.0),
                  child: Row(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppHeader('Select Catergory'),
                      // const Text(
                      //   'Select Category',
                      //   textAlign: TextAlign.left,
                      //   style: TextStyle(
                      //       fontSize: 25,
                      //       fontFamily: 'Mark',
                      //       fontWeight: FontWeight.w700),
                      // ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'view all',
                          style: TextStyle(
                            color: AppColors.OrangeColor,
                            fontFamily: 'Mark',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1,
                      child: CarouselSlider.builder(
                        itemCount: 5, //state.loadedProduct[0].images!.length,
                        itemBuilder: (context, index, _) => Row(
                          children: [
                            KSliderElements(
                              icon: Icon(Icons.phone_android),
                              text: 'Phones',
                            ),
                            KSliderElements(
                              icon: Icon(Icons.computer),
                              text: 'Computer',
                            ),
                            KSliderElements(
                              icon: Icon(Icons.heart_broken_outlined),
                              text: 'Health',
                            ),
                            KSliderElements(
                              icon: Icon(Icons.book_outlined),
                              text: 'Books',
                            ),
                          ],
                        ), //(ModelWidget(
                        //     //image: state.loadedProduct[0].images![index],
                        //     ),
                        options: CarouselOptions(
                          height: 330,
                          aspectRatio: 5.0,
                          initialPage: 0,
                          viewportFraction: 0.74,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.orange,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Search'),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.qr_code,
                        color: Colors.orange,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppHeader('Hot sales'),
                      //Text('Hot sales'),
                      KButtonSeeMore(),
                    ],
                  ),
                ),
                Padding(
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
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w700),
                            ),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors
                                  .orange, //Color.fromARGB(255, 110, 78, 1),
                              shape: CircleBorder(),
                              minimumSize: const Size(27, 27),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Text(
                              'Iphone 12',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  onPrimary: Colors.black,
                                  primary: Colors.white),
                              onPressed: () {},
                              child: Text('Buy now!'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppHeader('Best Seller'),
                      KButtonSeeMore(),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const KPhoneWidget(
                          URL:
                              'https://avatars.mds.yandex.net/i?id=c4ab8edc487f488cfe1e3854a733d2a3-5335399-images-thumbs&n=13',
                          CurrentPrice: '1,047',
                          PreviousPrice: '1,500',
                          Name: 'Samsung Galaxy s20 Ultra',
                        ),
                        const KPhoneWidget(
                          URL:
                              'https://tehnoteca.ru/img/1744/1743730/xiaomi_mi_10_pro_512gb_4.jpg',
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
                          URL:
                              'https://avatars.mds.yandex.net/i?id=cb0984fa5702e29c4d1e63c0c3665af1-5151471-images-thumbs&n=13',
                          CurrentPrice: '1,047',
                          PreviousPrice: '1,500',
                          Name: 'Samsung Note 20 Ultra',
                        ),
                        const KPhoneWidget(
                          URL:
                              'https://avatars.mds.yandex.net/i?id=13a3a2626f9f6dad55e6f113f2cd5a44-5657221-images-thumbs&n=13',
                          CurrentPrice: '300',
                          PreviousPrice: '400',
                          Name: 'Motorola One Edge',
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextButton KButtonSeeMore() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'See more',
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.orange),
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
        SizedBox(
          width: 23,
        ),
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
      ],
    );
  }
}

class KPhoneWidget extends StatelessWidget {
  final String URL;
  final String CurrentPrice;
  final String PreviousPrice;
  final String Name;
  const KPhoneWidget(
      {Key? key,
      required this.URL,
      required this.Name,
      required this.PreviousPrice,
      required this.CurrentPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 181,
      height: 227,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 187,
              height: 168,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('$URL'),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            //Image.network('$URL'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$$CurrentPrice',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 7,
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
      ),
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
