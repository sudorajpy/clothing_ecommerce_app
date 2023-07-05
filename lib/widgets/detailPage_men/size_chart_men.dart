import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/widgets/detailPage_men/size_dialog_men.dart';
import 'package:flutter/material.dart';

class SizeColorRoomMen extends StatelessWidget {
  final Color tshirtColor;
  const SizeColorRoomMen({super.key, required this.tshirtColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 220,
      color: roomColor.withOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(

            width: double.maxFinite,
            child: const Text(
              'Color: {Color Name} ',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 176, 7),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: tshirtColor,
                    borderRadius: BorderRadius.circular(50)),
              ),
              // Container(
              //   margin: const EdgeInsets.only(
              //     left: 10,
              //   ),
              //   width: 50,
              //   height: 50,
              //   decoration: BoxDecoration(
              //       color: Colors.black,
              //       borderRadius: BorderRadius.circular(50)),
              // ),
              // Container(
              //   margin: const EdgeInsets.only(
              //     left: 10,
              //   ),
              //   width: 50,
              //   height: 50,
              //   decoration: BoxDecoration(
              //       color: Colors.brown,
              //       borderRadius: BorderRadius.circular(50)),
              // ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Size: ',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 176, 7),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const SizeDialogBoxMen();
                        });
                  },
                  child: const Text(
                    'Size Chart',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 176, 7),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'S',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'M',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'L',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'XL',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  '2XL',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  '3XL',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

List<Widget> sizeBox = [
  Container(
    margin: const EdgeInsets.only(
      left: 10,
    ),
    width: 50,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(10)),
  ),
  Container(
    margin: const EdgeInsets.only(
      left: 10,
    ),
    width: 50,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(10)),
  ),
  Container(
    margin: const EdgeInsets.only(
      left: 10,
    ),
    width: 50,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(10)),
  ),
];
