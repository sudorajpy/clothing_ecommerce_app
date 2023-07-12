import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
import 'package:clothing_ecommerce_app/screens/pages/details_page/detail_men.dart';
import 'package:flutter/material.dart';

import '../data/tshirt_data_dummy.dart';
import '../screens/pages/details_page/detail_girl.dart';

class PopularCat extends StatelessWidget {
  PopularCat({super.key});

  final List<TshirtModelData> tShirt = dummyTshirts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjust the number of columns as desired
        childAspectRatio: 3 / 4, // Adjust the aspect ratio as desired
      ),
      itemCount: tShirt.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                if(tShirt[index].gender == 'male'){
                  return DetailsPageMen(tShirt: tShirt[index]);
                }
                else{
                  return DetailPageGirl(tShirt: tShirt[index]);
                }
              }),
            );
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Image.network(
                  tShirt[index].imagePath,
                  fit: BoxFit.cover,
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    tShirt[index].name,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //   child: Text(
                //     tShirts[index].color,
                //     style: TextStyle(fontSize: 14, color: Colors.grey),
                //   ),
              ],
            ),
          ),
        );
      },
    );

    // Column(children: [
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       buildCard('assets/images/pic1.jpg', 'First Category'),
    //       buildCard('assets/images/pic1.jpg', 'First Category'),
    //     ],
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       buildCard('assets/images/pic1.jpg', 'First Category'),
    //       buildCard('assets/images/pic1.jpg', 'First Category'),
    //     ],
    //   ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       buildCard('assets/images/pic1.jpg', 'First Category'),
    //       buildCard('assets/images/pic1.jpg', 'First Category'),
    //     ],
    //   ),
    // ]
    //     // shrinkWrap: true,
    //     );
  }
}

// Widget buildCard(String imagePath, String text) => Container(
//     width: 180,
//     height: 250,
//     margin: const EdgeInsets.only(top: 20,),
//     // color: Colors.white,
//     // margin: const EdgeInsets.only(left: 20, right: 20),
//     decoration: const BoxDecoration(
      
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//       color: Color.fromARGB(255, 99, 20, 20),
//     ),
//     child: Column(
//       children: [
//         ClipRRect(
//             borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.fill,
//             )),
//         Text(
//           text,
//           style: const TextStyle(
//               color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ],
//     ));
