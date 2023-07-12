// import 'package:clothing_ecommerce_app/data/tshirt_data_dummy.dart';
// import 'package:clothing_ecommerce_app/models/cart_model.dart';
// import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
// import 'package:flutter/material.dart';

// import 'cart_item_card.dart';

// class CartScreenBody extends StatefulWidget {
//   const CartScreenBody({super.key, required this.dummyTshirts});

//   final List<TshirtModelData> dummyTshirts;

//   @override
//   State<CartScreenBody> createState() => _CartScreenBodyState();
// }

// class _CartScreenBodyState extends State<CartScreenBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: ListView.builder(
//         itemCount: dummyTshirts.length,
//         itemBuilder: (context, index) => Dismissible(
//             key: Key(dummyTshirts[index].id.toString()),
//             direction: DismissDirection.endToStart,
//             background: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               decoration: BoxDecoration(
//                   color: const Color(0xFFFFE6E6),
//                   borderRadius: BorderRadius.circular(15)),
//               child: Row(
//                 children: [
//                   const Spacer(),
//                   Image.asset('assets/images/luffy_cry_face.png')
//                 ],
//               ),
//             ),
//             onDismissed: (direction) => setState(() {
//                   var removedIndex = dummyTshirts.removeAt(index);
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text('${removedIndex.name} removed from cart'),
//                     action: SnackBarAction(
//                       label: 'UNDO',
//                       onPressed: () {
//                         setState(() {
//                           dummyTshirts.insert(index, removedIndex);
//                         });
//                       },
//                     ),
//                   ));
//                 }),
//             child: CartItemCard(
//               tshirt: dummyTshirts[index],
//             )),
//       ),
//     );
//   }
// }
