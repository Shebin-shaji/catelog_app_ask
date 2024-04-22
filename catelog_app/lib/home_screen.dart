// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:catelog_app/dummy_db.dart';
import 'package:catelog_app/product_details_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(96, 228, 226, 226),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 51, 87, 52),
          leading: Icon(Icons.menu, color: Colors.white, size: 27),
          title: Text(
            "Catalog App",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
        body: GridView.builder(
            itemCount: DummyDb.productDetails.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2),
            itemBuilder: (context, index) => ProductDetailsContainer(
                  image: DummyDb.productDetails[index]["image"],
                  productName: DummyDb.productDetails[index]["productName"],
                )),
      ),
    );
  }
}
