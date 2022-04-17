import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_task/app/data/model/product_item_model.dart';
import 'package:test_task/app/global/global.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({
    Key? key,
    required this.productItem,
  }) : super(key: key);

  final ProductItem productItem;

  @override
  Widget build(BuildContext context) {
    final _locale = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      productItem.category.toString().toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 14.sp),
                    ),
                    Text(
                      productItem.title.toString().toUpperCase(),
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2F2F3E)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.h),
            CarouselSlider.builder(
              itemCount: productItem.images!.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      CacheImageWidget(
                imageUrl: productItem.images![itemIndex],
                boxFit: BoxFit.fitWidth,
              ),
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _locale!.description,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22.sp,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    productItem.description.toString(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Text(
                        _locale.brand + ': ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        productItem.brand.toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.sp,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        _locale.price + ': ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        productItem.price.toString() + '\$',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.sp,
                          color: const Color.fromARGB(255, 18, 119, 170),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      if (productItem.rating! < 5 && productItem.rating! > 3.9)
                        for (var i = 0; i < 4; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      if (productItem.rating! < 3.9 &&
                          productItem.rating! > 2.9)
                        for (var i = 0; i < 2; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      if (productItem.rating! < 2.9 &&
                          productItem.rating! > 1.9)
                        for (var i = 0; i < 1; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      if (productItem.rating! < 1.9 &&
                          productItem.rating! > 0.9)
                        for (var i = 0; i < 0; i++)
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CBottomBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 0,
        onPressed: () => Get.back(),
        child: const Icon(FontAwesomeIcons.arrowLeft),
        heroTag: 'j',
      ),
    );
  }
}
