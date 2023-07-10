import 'package:flutter/material.dart';

import '../../../../models/cart_model.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key, required this.cart,
  });
  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: SizedBox(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple.shade200,
              ),
              child: ClipRRect(
                child: Image.asset(demoCartItems[0].tshirt.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            
            ),

            Column(
              children: [
                SizedBox(height: 10,),
                Text(cart.tshirt.name),
                SizedBox(height: 10,),
                Text(cart.tshirt.price.toString()),
                SizedBox(height: 10,),
                // SizedBox(width: 10,),
                // Text(demoCartItems[0].noOfItems.toString()),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(cart.noOfItems.toString()),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    TextButton(onPressed: (){}, child: Text('Save for later', style: TextStyle(color: Colors.black),)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}