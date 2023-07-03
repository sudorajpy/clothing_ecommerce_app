import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SizeDialogGirl extends StatelessWidget {
  const SizeDialogGirl({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            width: 350,
            height: 600,
            color: roomColorGirl.withOpacity(0.5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text('Size Guide',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    width: double.maxFinite,
                    height: 400,
                    // color: Colors.white,
                    child: Image.asset('assets/images/nico_robin.png'),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 80,
                        color:Colors.grey[300],
                        child: const Center(
                          child: Text('Size',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 80,
                        color:Colors.grey[300],
                        child: const Center(
                          child: Text('Bust (In Inches)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.center,
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 80,
                        color:Colors.grey[300],
                        child: const Center(
                          child: Text('Front Length (In Inches)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.center,
                                    ),
                        ),
                        
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 80,
                        color:Colors.grey[300],
                        child: const Center(
                          child: Text('Sleeve Length (In Inches)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.center,
                                  ),
                        ),
                      ),
                    ],
                  ),
    
    
    
    
    
    
                  //size rows start here
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('XS',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('42.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('25.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('7.25',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('S',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('44.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('26.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('7.5',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('M',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('46.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('27.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('7.75',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('L',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('48.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('28.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('8.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('XL',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('50.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('29.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('8.25',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('2XL',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('52.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('30.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('8.5',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('3XL',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('54.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('31.0',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 80,
                        height: 40,
                        child: const Center(
                          child: Text('8.75',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 14,fontWeight: FontWeight.w600),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        
      
    );
  }
}
