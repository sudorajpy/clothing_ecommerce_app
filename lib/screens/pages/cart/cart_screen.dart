import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
import 'package:clothing_ecommerce_app/screens/pages/cart/components/body.dart';
import 'package:flutter/material.dart';

import '../../../data/tshirt_data_dummy.dart';
import '../../../models/cart_model.dart';
import 'components/cart_item_card.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.dummyTshirts
  });

  final List<TshirtModelData> dummyTshirts;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

// double getTotalPrice() {
//     double totalPrice = 0;
//     for (var item in demoCartItems) {
//       totalPrice += item.tshirt.price;
//     }
//     return totalPrice;
//   }



class _CartScreenState extends State<CartScreen> {

  
  
  @override
  Widget build(BuildContext context) {
    
// double totalPrice = 0;
// for (var item in demoCartItems) {
//       totalPrice += item.tshirt.price * item.noOfItems;
//     }

    return 
    
    Scaffold(
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
              '${dummyTshirts.length} items',
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
      body: 
      
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: dummyTshirts.length,
        itemBuilder: (context, index) => Dismissible(
            key: Key(dummyTshirts[index].id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Spacer(),
                  Image.asset('assets/images/luffy_cry_face.png')
                ],
              ),
            ),
            onDismissed: (direction) => setState(() {
                  var removedIndex = dummyTshirts.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('${removedIndex.name} removed from cart'),
                    action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: () {
                        setState(() {
                          dummyTshirts.insert(index, removedIndex);
                        });
                      },
                    ),
                  ));
                }),
            child: CartItemCard(tshirt: 
              dummyTshirts[index]
              //  dummyTshirts[index],
            )),
      ),
    ),
      bottomNavigationBar: const CheckOutCard(),
    );
  }
}

