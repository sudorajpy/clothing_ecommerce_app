import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
import 'package:clothing_ecommerce_app/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({
    super.key,
    required this.tshirt,
  });
  final TshirtModelData tshirt;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  // int numOfItems = 1;

  // void incrementCounter() {
  //   if (numOfItems < 10) {
  //     setState(() {
  //       numOfItems++;
  //     });
  //   }
  //   // setState(() {
  //   //   numOfItems++;
  //   // });
  // }

  // void decrementCounter() {
  //   if (numOfItems > 1) {
  //     setState(() {
  //       numOfItems--;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    print('build');
    // final provider = Provider.of<ExmpProvider>(context, listen: false);

    return Consumer<ExmpProvider>(
      builder: (context, provider, child) {
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
                      widget.tshirt.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(widget.tshirt.name),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(widget.tshirt.price.toString()),
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
                              onPressed: provider.decrementCounter,
                              icon: const Icon(Icons.remove),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // Consumer<ExmpProvider>(builder: (context,value, child ){
                        //   return Text(value.counter.toString());
                        // }),
                        
                        Text(
                              provider.counter.toString(),
                              style: TextStyle(fontSize: 24),
                            ),
                          
                        // Text(provider.counter.toString()),
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
                              onPressed: provider.incrementCounter,
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
      },
    );
  }
}
