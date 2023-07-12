import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
import 'package:flutter/material.dart';



class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.tshirt,
  });
  final TshirtModelData tshirt;

  @override
  Widget build(BuildContext context) {
    return 
    // tshirt.isAddedToCart
    //     ?
    
    Card(
      child: SizedBox(
        height: 140,
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
                child: Image.network(
                  tshirt.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(tshirt.name),
                const SizedBox(
                  height: 10,
                ),
                Text(tshirt.price.toString()),
                const SizedBox(
                  height: 10,
                ),
                // SizedBox(width: 10,),
                // Text(demoCartItems[0].noOfItems.toString()),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
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
                    const SizedBox(
                      width: 10,
                    ),
                    // Text(cart.noOfItems.toString()),
                    const SizedBox(
                      width: 10,
                    ),
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
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Save for later',
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
    //  : Stack(
    //   children: [
    //     Image.asset('assets/images/hinata.png')
    //   ],
    // );
  }
}
