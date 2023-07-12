import 'package:flutter/material.dart';

class AccountSettingWidget extends StatelessWidget {
  const AccountSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Edit Profile')],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Saved Cards and Wallets')],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Select Language')],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Notification Settings')],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Reviews')],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Question and Answers')],
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Browse FAQs')],
              )),
        ),
        
       
        
      ],
    );
  }
}
