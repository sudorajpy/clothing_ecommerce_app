import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../models/cart_model.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Order'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: demoCartItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      child: Image.network(
                        demoCartItems[index].tshirt.imagePath.toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Order Details',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: roomColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  child: const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'this is the address \n it can be long',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Payment Details',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // payment details
          SizedBox(
            height: 110,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    width: 50,
                    padding: const EdgeInsets.all(7),
                    margin:
                        EdgeInsets.only(left: index == 0 ? 15 : 0, right: 10),
                    decoration: BoxDecoration(
                        color: kYellow,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 27,
                          height: 27,
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.add, size: 12),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          'Add',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 200,
                        padding: const EdgeInsets.all(15),
                        margin: EdgeInsets.only(
                            left: index == 0 ? 20 : 0, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '02/25',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? 20 : 0, right: 10),
                        child: ClipPath(
                          // clipper: ClipPathClass(),
                          child: Container(
                            height: 110,
                            width: 130,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: kOrange,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'VISA',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '246.99',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '**** 0032',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            // child: Image.asset(
                            //   _imageUrl,
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),

    const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 150,
              // color: Colors.white,
              child: ClipRRect(child: Image.asset('assets/images/nami_money.png',),),
            )

        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: roomColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '246.99',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.deepPurple[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'Pay',
                  style: TextStyle(
                    color: Color.fromARGB(255, 39, 2, 2),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            
          ]
      ),
      ),
    );
  }
}
