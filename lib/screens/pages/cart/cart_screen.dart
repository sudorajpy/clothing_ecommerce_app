import 'package:clothing_ecommerce_app/screens/pages/cart/components/body.dart';
import 'package:flutter/material.dart';

import '../../../models/cart_model.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}


class _CartScreenState extends State<CartScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              'Cart',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${demoCartItems.length} items',
              style:Theme.of(context).textTheme.bodySmall,
            ),
          
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        // actions: [
        //   Positioned(
        //     left: 0,
        //     child: IconButton(
        //       onPressed: () {},
        //       icon: const Icon(Icons.notifications),
        //     ),
        //   ),

        // ],
        centerTitle: true,
        elevation: 4,
        // backgroundColor: Colors.deepPurple.shade200,
      ),
      body: CartScreenBody(),
      bottomNavigationBar: CheckOutCard(totalPrice: finalTotal,),
    );
  }
}

