import 'package:clothing_ecommerce_app/models/cart_model.dart';
import 'package:flutter/material.dart';

class CheckOutCard extends StatefulWidget {
  CheckOutCard({
    super.key,
    // required this.totalPrice,
  });
  // double totalPrice;

  @override
  State<CheckOutCard> createState() => _CheckOutCardState();
}

class _CheckOutCardState extends State<CheckOutCard> {

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
for (var item in demoCartItems) {
      totalPrice += item.tshirt.price * item.noOfItems;
    }

    double deliveryCharge = 150;
    if (totalPrice > 1000) {
      deliveryCharge = 0;
    }
    double totalAmount = totalPrice + deliveryCharge;
    return Container(
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            // color: Colors.white.withOpacity(0.2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Price Details',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      Text(
                        'Price (${demoCartItems.length} items)',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Spacer(),
                      Text(
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Delivery Charges',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Spacer(),
                      Text(
                        deliveryCharge.toString(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Total Amount',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Spacer(),
                      Text(
                        '\$${(totalAmount + deliveryCharge).toStringAsFixed(2)}',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () =>Navigator.pushNamed(context, '/order'),
                    child: Text(
                      'Check Out',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
