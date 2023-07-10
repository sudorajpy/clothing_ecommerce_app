import 'package:clothing_ecommerce_app/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_item_card.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({super.key});

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  double finalTotal = 0;
  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
for (var item in demoCartItems) {
      totalPrice += item.tshirt.price * item.noOfItems;
    }
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: demoCartItems.length,
        itemBuilder: (context, index) => Dismissible(
            key: Key(demoCartItems[index].tshirt.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/animations/svgs/trash.svg',
                    height: 50,
                  ),
                ],
              ),
            ),
            onDismissed: (direction) => setState(() {
                 var removedIndex= demoCartItems.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${removedIndex.tshirt.name} removed from cart'),
                    action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: (){
                        setState(() {
                          demoCartItems.insert(index, removedIndex);
                        });
                      },
                    ),
                  ));
                  double finalTotal  =totalPrice-removedIndex.tshirt.price;
                }),
            child: CartItemCard(
              cart: demoCartItems[index],
            )),
      ),
    );
  }
}
