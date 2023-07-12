

import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class DeliveryBoxWidget extends StatefulWidget {
  final Color deliveryBoxColor;
  const DeliveryBoxWidget({super.key, required this.deliveryBoxColor});

  @override
  State<DeliveryBoxWidget> createState() => _DeliveryBoxWidgetState();
}

class _DeliveryBoxWidgetState extends State<DeliveryBoxWidget> {
  late TextEditingController pincodeController;
  String? pincode = '';

  @override
  void initState() {
    super.initState();
    pincodeController = TextEditingController();
  }

  @override
  void dispose() {
    pincodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void check() {
      if (pincodeController.text.length == 6) {
        //write code if pincode length is less than 6 digits then do not close the dialog box and show snackbar with message 'Please enter valid pincode'

        Navigator.of(context).pop(pincodeController.text);
        pincodeController.clear();

        // );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please enter valid pincode'),
          ),
        );
      }
    }

    Future<String?> openDialog() => showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Enter Pincode'),
              content: TextField(
                keyboardType: TextInputType.number,
                maxLength: 6,
                autofocus: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Pincode',
                ),
                controller: pincodeController,
              ),
              actions: [
                TextButton(onPressed: check, child: const Text('Check')),
              ],
            ));

    return Container(
      width: double.infinity,
      height: 220,
      color: widget.deliveryBoxColor.withOpacity(0.5),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.delivery_dining,
                      color: Colors.green,
                    ),
                    Text(
                      'Delivery',
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      'Free',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.payment,
                      color: Colors.green,
                    ),
                    Text(
                      'COD',
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      'Availble',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                    ),
                    Text(
                      'Return',
                      style: TextStyle(color: Colors.green),
                    ),
                    Text(
                      '15 Days',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(
              width: double.maxFinite,
              
              height: 100,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      width: double.maxFinite,
                      child: Text(
                        'Delivery in 3-7 days',
                        style: TextStyle(color: whiteColor, fontSize: 20),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: whiteColor,
                            ),
                            const Text(
                              "Delivering to ",
                              style: TextStyle(
                                  color: whiteColor, fontSize: 20),
                            ),
                            Text(
                              " $pincode",
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                          child: const Text(
                            'Change',
                            style: TextStyle(color: whiteColor, fontSize: 20),
                          ),
                          onPressed: () async {
                            final pincode = await openDialog();
                            setState(() {
                              // pincodeController.text = pincode!;
                              this.pincode = pincode;
                            });
                          }),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
