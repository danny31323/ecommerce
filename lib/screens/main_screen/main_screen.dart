import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/app_colors/app_colors.dart';
import 'package:e_commerce/components/bottom_navigation_bar/botton_navigation_bar_widget.dart';
import 'package:e_commerce/components/hot_sales/hot_sales_widget.dart';
import 'package:e_commerce/components/navigation/navigation_widget.dart';
import 'package:e_commerce/components/search/search_widget.dart';
import 'package:e_commerce/components/select_category/select_category_widget.dart';
import 'package:e_commerce/components/text.dart';
import 'package:flutter/material.dart';

import '../../components/best_seller/best_seller_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NavigationWidget(),
                _TitleCategory(),
                SelectCategoryWidget(),
                SearchWidget(),
                _TitleHotSalesCategory(),
                HotSalesWidget(),
                _TitleBestSeller(),
                BestSellerWidget(),
                BottomNavigationBarWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleBestSeller extends StatelessWidget {
  const _TitleBestSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppHeader('Best Seller'),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See more',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleHotSalesCategory extends StatelessWidget {
  const _TitleHotSalesCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppHeader('Hot sales'),
          TextButton(
            onPressed: () {},
            child: Text(
              'See more',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleCategory extends StatelessWidget {
  const _TitleCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
