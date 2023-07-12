import 'package:clothing_ecommerce_app/data/tshirt_data_dummy.dart';
import 'package:clothing_ecommerce_app/models/tshirt_model.dart';

class CartModel{
  final TshirtModelData tshirt;
  final int noOfItems;
  CartModel({required this.tshirt, required this.noOfItems});
}

List<CartModel> demoCartItems = [
  CartModel(tshirt: dummyTshirts[0], noOfItems: 1),
  CartModel(tshirt: dummyTshirts[1], noOfItems: 1),
  CartModel(tshirt: dummyTshirts[2], noOfItems: 1),
  CartModel(tshirt: dummyTshirts[3], noOfItems: 1),
  CartModel(tshirt: dummyTshirts[4], noOfItems: 1),
];