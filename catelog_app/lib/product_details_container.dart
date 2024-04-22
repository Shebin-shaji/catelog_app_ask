// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer(
      {super.key, required this.image, required this.productName});
  final String image;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(image))),
            height: 200,
          ),
          Container(
            padding: EdgeInsets.only(left: 6, right: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  productName,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Mobile",
                  style:
                      TextStyle(color: const Color.fromARGB(179, 85, 82, 82)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "\$1299 ",
                      style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(179, 85, 82, 82),
                          decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      "\$999 ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "20% off",
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: double.infinity,
                  height: 35,
                  color: Colors.green,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
