import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/models/product_models.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

// class ProductProvider with ChangeNotifier {
//   List<ProductModel> herbsProductList = [];
//   late ProductModel productModel;

//   fatchHerbsProductData() async {
//     List<ProductModel> newList = [];
//     QuerySnapshot value =
//         await FirebaseFirestore.instance.collection("HerbsProduct").get();
//     value.docs.forEach(
//       (element) {
//         //ProductModel =
//         print(element.data());
//         productModel = ProductModel(
//           productImage: element.get("productImage"),
//           productName: element.get("productName"),
//           productPrice: element.get("productPrice"),
//         );
//         newList.add(productModel);
//       },
//     );
//     herbsProductList = newList;
//     notifyListeners();
//   }

//   List<ProductModel> get getHerbsProductDataList {
//     return herbsProductList;
//   }
// }

class ProductProvider with ChangeNotifier {
  late ProductModel productModel;
  List<ProductModel> herbsProductList = [];

  fatchHerbsProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();

    value.docs.forEach(
      (element) {
        print(element.data());
        productModel = ProductModel(
          productImage: element.get("productImage"),
          productName: element.get("productName"),
          productPrice: element.get("productPrice"),
        );
        newList.add(productModel);
      },
    );
    herbsProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProductDataList {
    return herbsProductList;
  }
}
