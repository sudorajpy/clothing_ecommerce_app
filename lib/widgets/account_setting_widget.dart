import 'package:flutter/material.dart';

class AccountSettingWidget extends StatelessWidget {
  const AccountSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Edit Profile')],
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Saved Cards and Wallets')],
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Select Language')],
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Notification Settings')],
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Reviews')],
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 5,left: 5,right: 5),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Row(
                children: [Icon(Icons.home), Text('Question and Answers')],
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 5,left: 5,right: 5),
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
