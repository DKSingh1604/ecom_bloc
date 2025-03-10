import 'package:ecom_bloc/features/home/bloc/home_bloc.dart';
import 'package:ecom_bloc/features/home/models/product_data_model.dart';
import 'package:flutter/material.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBloc homeBloc;
  const ProductTileWidget({
    super.key,
    required this.productDataModel,
    required this.homeBloc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(productDataModel.imageUrl),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        productDataModel.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "\$" + productDataModel.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    IconButton(
                      //WISHLIST BUTTON
                      onPressed: () {
                        homeBloc.add(
                          HomeProductWishlistButtonClickedEvent(
                            clickedProduct: productDataModel,
                          ),
                        );
                      },
                      icon: Icon(Icons.favorite_border_outlined),
                    ),
                    IconButton(
                      //CART BUTTON
                      onPressed: () {
                        homeBloc.add(
                          HomeProductCartButtonClickedEvent(
                            clickedProduct: productDataModel,
                          ),
                        );
                      },
                      icon: Icon(Icons.shopping_bag_outlined),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4,
                  ),
                  child: Text(
                    productDataModel.description,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
