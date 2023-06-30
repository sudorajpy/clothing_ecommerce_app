import 'package:flutter/material.dart';

class FilterRoundCat extends StatelessWidget {
  const FilterRoundCat({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 15,right: 15),
            child: Row(
              // scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.deepPurple,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset("assets/images/tshirt2.webp",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("T-Shirt"),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.deepPurple,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset("assets/images/tshirt2.webp",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("T-Shirt"),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.deepPurple,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset("assets/images/tshirt2.webp",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("T-Shirt"),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.deepPurple,
                      ),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset("assets/images/tshirt2.webp",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("T-Shirt"),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.deepPurple,
                      ),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset("assets/images/tshirt2.webp",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("T-Shirt"),
                  ],
                ),
              ],
            ),
        
      ),
    );
  }
}